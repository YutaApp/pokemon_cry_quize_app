// domain/use_cases/fetch_pokemon_master_use_case.dart
//
// アプリ起動時にポケモンマスタを取得する use case。
// キャッシュ戦略の判断は Repository に委譲しているため、
// この use case はリトライ・進捗通知・バリデーションだけを担う。

import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';
import 'package:pokemon_get/features/pokemon/domain/repositories/i_pokemon_repository.dart';

class FetchPokemonMasterUseCase {
  FetchPokemonMasterUseCase({required IPokemonRepository repository})
    : _repository = repository;

  final IPokemonRepository _repository;

  /// ポケモンマスタを取得する。
  ///
  /// [onProgress] が渡された場合、バッチ取得のたびに進捗 (0.0〜1.0) を通知する。
  /// キャッシュヒット時は即座に 1.0 が通知される。
  Future<List<PokemonQuizItem>> execute({
    required PokemonGeneration generation,
    void Function(double progress)? onProgress,
  }) async {
    onProgress?.call(0.0);

    final items = await _repository.fetchByGeneration(
      generation,
      onProgress: onProgress,
    );

    if (items.isEmpty) {
      throw StateError(
        '${generation.label} のポケモンデータが0件でした。'
        'ネットワーク接続を確認してください。',
      );
    }

    onProgress?.call(1.0);
    return items;
  }
}
