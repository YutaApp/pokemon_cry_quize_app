// lib/services/poke_api_service.dart
//
// PokeAPI への HTTP リクエストを一元管理するサービス。
// - エラーハンドリング: AppException に変換して上位に伝播
// - 並列リクエスト: Future.wait で複数ポケモンを同時取得
// - このクラス自体はキャッシュを持たない (キャッシュは CacheService が担当)

import 'package:dio/dio.dart';
import 'package:pokemon_get/features/pokemon/data/models/api/pokemon_responses.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';
import 'package:pokemon_get/features/pokemon/data/core/errors/app_exception.dart';

class PokeApiService {
  PokeApiService({required Dio dio}) : _dio = dio;

  final Dio _dio;

  static const _jaLanguage = 'ja';

  // ─────────────────────────────────────────────
  // Public API
  // ─────────────────────────────────────────────

  /// 指定世代のポケモンIDリストを取得する。
  ///
  /// [generation] に対応する limit/offset:
  ///   1世代: limit=151, offset=0
  ///   2世代: limit=100, offset=151
  ///   全世代: limit=1025, offset=0 (SV DLC まで)
  Future<List<int>> fetchPokemonIdList({
    required int limit,
    int offset = 0,
  }) async {
    final response = await _get('/pokemon?limit=$limit&offset=$offset');
    final list = PokemonListResponse.fromJson(response);
    return list.results.map((r) => r.idFromUrl).toList();
  }

  /// 複数ポケモンを並列取得して [PokemonQuizItem] に変換する。
  ///
  /// pokemon + pokemon-species を同時に叩くので
  /// 4体の場合 8リクエストを並列実行する。
  Future<List<PokemonQuizItem>> fetchQuizItems(List<int> ids) async {
    return Future.wait(ids.map(_fetchSingleItem));
  }

  // ─────────────────────────────────────────────
  // Private helpers
  // ─────────────────────────────────────────────

  Future<PokemonQuizItem> _fetchSingleItem(int id) async {
    // pokemon と pokemon-species を並列取得
    final results = await Future.wait([
      _get('/pokemon/$id'),
      _get('/pokemon-species/$id'),
    ]);

    final pokemon = PokemonResponse.fromJson(results[0]);
    final species = PokemonSpeciesResponse.fromJson(results[1]);

    // 日本語名を取得 (なければ英語名にフォールバック)
    final nameJa =
        species.names
            .where((n) => n.language.name == _jaLanguage)
            .map((n) => n.name)
            .firstOrNull ??
        pokemon.name;

    return PokemonQuizItem(
      id: pokemon.id,
      nameJa: nameJa,
      nameEn: pokemon.name,
      criesUrl: pokemon.cries.latest,
      artworkUrl: pokemon.sprites.other.officialArtwork.frontDefault,
      types: pokemon.types.map((t) => t.type.name).toList(),
    );
  }

  Future<Map<String, dynamic>> _get(String path) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(path);
      return response.data!;
    } on DioException catch (e) {
      throw switch (e.type) {
        DioExceptionType.connectionError ||
        DioExceptionType.connectionTimeout => AppException.network(
          e.message ?? '',
        ),
        DioExceptionType.receiveTimeout => const AppException.network(
          'タイムアウトしました',
        ),
        DioExceptionType.badResponse => switch (e.response?.statusCode) {
          404 => const AppException.notFound('ポケモンが見つかりません'),
          429 => const AppException.rateLimited('リクエスト制限に達しました'),
          500 => const AppException.serverError('サーバーエラー'),
          _ => AppException.unknown('${e.response?.statusCode}'),
        },
        _ => AppException.unknown(e.message ?? ''),
      };
    }
  }
}
