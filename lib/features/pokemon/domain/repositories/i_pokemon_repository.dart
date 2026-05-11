// domain/repositories/i_pokemon_repository.dart
//
// domain 層の抽象インターフェース。
// - Flutter / Dio / Hive を一切 import しない純粋 Dart
// - data 層の実装詳細（キャッシュ戦略・HTTP）を知らない
// - use_cases はこのインターフェースだけに依存する

import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_generation.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';

abstract interface class IPokemonRepository {
  /// 指定世代のポケモンマスタを取得する。
  ///
  /// キャッシュヒット時はローカルから即時返却。
  /// キャッシュミス時は API から取得してキャッシュを更新。
  ///
  /// [onProgress] はバッチ取得中の進捗 (0.0〜1.0) を通知する。
  /// キャッシュヒット時は 1.0 のみ通知される。
  ///
  /// Throws [AppException] on network / server errors.
  Future<List<PokemonQuizItem>> fetchByGeneration(
    PokemonGeneration generation, {
    void Function(double progress)? onProgress,
  });

  /// キャッシュを破棄して次回取得時に強制再フェッチさせる。
  Future<void> clearCache();
}
