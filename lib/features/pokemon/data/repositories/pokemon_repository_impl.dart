// data/repositories/pokemon_repository_impl.dart
//
// IPokemonRepository の唯一の実装。
// PokeApiService と CacheService を組み合わせる責務だけを持つ。
// HTTP の詳細も Hive の詳細も知らない。

import 'package:pokemon_get/features/pokemon/data/datasources/cache_service.dart';
import 'package:pokemon_get/features/pokemon/data/datasources/pokemon_api_service.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';
import 'package:pokemon_get/features/pokemon/domain/repositories/i_pokemon_repository.dart';

class PokemonRepositoryImpl implements IPokemonRepository {
  PokemonRepositoryImpl({
    required PokeApiService api,
    required CacheService cache,
  }) : _api = api,
       _cache = cache;

  final PokeApiService _api;
  final CacheService _cache;

  static const _batchSize = 20;

  // ─────────────────────────────────────────────
  // IPokemonRepository の実装
  // ─────────────────────────────────────────────

  @override
  Future<List<PokemonQuizItem>> fetchByGeneration(
    PokemonGeneration generation, {
    void Function(double progress)? onProgress,
  }) async {
    // ① キャッシュヒット → 即返却
    if (_cache.isCacheValid) {
      final cached = _cache.loadAll();
      if (cached != null && cached.isNotEmpty) {
        onProgress?.call(1.0);
        return cached;
      }
    }

    // ② キャッシュミス → API から取得
    final ids = await _api.fetchPokemonIdList(
      limit: generation.limit,
      offset: generation.offset,
    );

    final items = <PokemonQuizItem>[];

    for (var i = 0; i < ids.length; i += _batchSize) {
      final batch = ids.sublist(i, (i + _batchSize).clamp(0, ids.length));
      final fetched = await _api.fetchQuizItems(batch);
      items.addAll(fetched);

      // バッチ完了ごとに進捗を通知
      onProgress?.call(items.length / ids.length);
    }

    // ③ 取得結果をキャッシュに保存
    await _cache.saveAll(items);
    return items;
  }

  @override
  Future<void> clearCache() => _cache.clearAll();
}
