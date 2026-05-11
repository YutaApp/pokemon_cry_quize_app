// lib/models/pokemon_quiz_item.dart
//
// APIレスポンスを変換したドメインモデル。
// 画面・ロジック層はこのモデルだけを参照する。

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_quiz_item.freezed.dart';
part 'pokemon_quiz_item.g.dart';

@freezed
abstract class PokemonQuizItem with _$PokemonQuizItem {
  const factory PokemonQuizItem({
    required int id,

    /// 日本語名 (pokemon-species から取得)
    required String nameJa,

    /// 英語スラッグ (pokemon.name)
    required String nameEn,

    /// 鳴き声 OGG の URL
    required String criesUrl,

    /// 公式アートワーク URL (nullable: 一部ポケモンは未収録)
    String? artworkUrl,

    /// タイプ名リスト (例: ["fire", "flying"])
    required List<String> types,
  }) = _PokemonQuizItem;

  factory PokemonQuizItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonQuizItemFromJson(json);
}
