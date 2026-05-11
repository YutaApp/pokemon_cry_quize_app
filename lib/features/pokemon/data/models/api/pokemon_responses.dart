// lib/models/api/pokemon_response.dart
//
// PokeAPI レスポンスの型定義
// GET /pokemon/{id} および GET /pokemon-species/{id} に対応
//
// コード生成: flutter pub run build_runner build

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_responses.freezed.dart';
part 'pokemon_responses.g.dart';

// ─────────────────────────────────────────────
// GET /pokemon/{id}
// ─────────────────────────────────────────────

@freezed
abstract class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    required int id,
    required String name,
    required PokemonCries cries,
    required PokemonSprites sprites,
    required List<PokemonTypeSlot> types,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}

@freezed
abstract class PokemonCries with _$PokemonCries {
  const factory PokemonCries({required String latest, String? legacy}) =
      _PokemonCries;

  factory PokemonCries.fromJson(Map<String, dynamic> json) =>
      _$PokemonCriesFromJson(json);
}

@freezed
abstract class PokemonSprites with _$PokemonSprites {
  const factory PokemonSprites({
    @JsonKey(name: 'other') required PokemonSpritesOther other,
  }) = _PokemonSprites;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}

@freezed
abstract class PokemonSpritesOther with _$PokemonSpritesOther {
  const factory PokemonSpritesOther({
    @JsonKey(name: 'official-artwork')
    required PokemonOfficialArtwork officialArtwork,
  }) = _PokemonSpritesOther;

  factory PokemonSpritesOther.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesOtherFromJson(json);
}

@freezed
abstract class PokemonOfficialArtwork with _$PokemonOfficialArtwork {
  const factory PokemonOfficialArtwork({
    @JsonKey(name: 'front_default') required String? frontDefault,
  }) = _PokemonOfficialArtwork;

  factory PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkFromJson(json);
}

@freezed
abstract class PokemonTypeSlot with _$PokemonTypeSlot {
  const factory PokemonTypeSlot({
    required int slot,
    required NamedResource type,
  }) = _PokemonTypeSlot;

  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);
}

// ─────────────────────────────────────────────
// GET /pokemon-species/{id}
// ─────────────────────────────────────────────

@freezed
abstract class PokemonSpeciesResponse with _$PokemonSpeciesResponse {
  const factory PokemonSpeciesResponse({
    required int id,
    required String name,
    required List<PokemonName> names,
  }) = _PokemonSpeciesResponse;

  factory PokemonSpeciesResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesResponseFromJson(json);
}

@freezed
abstract class PokemonName with _$PokemonName {
  const factory PokemonName({
    required String name,
    required NamedResource language,
  }) = _PokemonName;

  factory PokemonName.fromJson(Map<String, dynamic> json) =>
      _$PokemonNameFromJson(json);
}

// ─────────────────────────────────────────────
// GET /pokemon?limit=N  (リスト取得)
// ─────────────────────────────────────────────

@freezed
abstract class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse({
    required int count,
    required List<NamedResource> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}

// ─────────────────────────────────────────────
// 共通
// ─────────────────────────────────────────────

@freezed
abstract class NamedResource with _$NamedResource {
  const factory NamedResource({required String name, required String url}) =
      _NamedResource;

  factory NamedResource.fromJson(Map<String, dynamic> json) =>
      _$NamedResourceFromJson(json);

  /// URL末尾の数値IDを取り出すユーティリティ
  /// 例: "https://pokeapi.co/api/v2/pokemon/25/" → 25
  const NamedResource._();
  int get idFromUrl {
    final segments = url.split('/')..removeWhere((s) => s.isEmpty);
    return int.parse(segments.last);
  }
}
