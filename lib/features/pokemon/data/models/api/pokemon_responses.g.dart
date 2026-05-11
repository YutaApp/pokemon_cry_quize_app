// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) =>
    _PokemonResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      cries: PokemonCries.fromJson(json['cries'] as Map<String, dynamic>),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonResponseToJson(_PokemonResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cries': instance.cries,
      'sprites': instance.sprites,
      'types': instance.types,
    };

_PokemonCries _$PokemonCriesFromJson(Map<String, dynamic> json) =>
    _PokemonCries(
      latest: json['latest'] as String,
      legacy: json['legacy'] as String?,
    );

Map<String, dynamic> _$PokemonCriesToJson(_PokemonCries instance) =>
    <String, dynamic>{'latest': instance.latest, 'legacy': instance.legacy};

_PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) =>
    _PokemonSprites(
      other: PokemonSpritesOther.fromJson(
        json['other'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonSpritesToJson(_PokemonSprites instance) =>
    <String, dynamic>{'other': instance.other};

_PokemonSpritesOther _$PokemonSpritesOtherFromJson(Map<String, dynamic> json) =>
    _PokemonSpritesOther(
      officialArtwork: PokemonOfficialArtwork.fromJson(
        json['official-artwork'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonSpritesOtherToJson(
  _PokemonSpritesOther instance,
) => <String, dynamic>{'official-artwork': instance.officialArtwork};

_PokemonOfficialArtwork _$PokemonOfficialArtworkFromJson(
  Map<String, dynamic> json,
) => _PokemonOfficialArtwork(frontDefault: json['front_default'] as String?);

Map<String, dynamic> _$PokemonOfficialArtworkToJson(
  _PokemonOfficialArtwork instance,
) => <String, dynamic>{'front_default': instance.frontDefault};

_PokemonTypeSlot _$PokemonTypeSlotFromJson(Map<String, dynamic> json) =>
    _PokemonTypeSlot(
      slot: (json['slot'] as num).toInt(),
      type: NamedResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeSlotToJson(_PokemonTypeSlot instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_PokemonSpeciesResponse _$PokemonSpeciesResponseFromJson(
  Map<String, dynamic> json,
) => _PokemonSpeciesResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  names: (json['names'] as List<dynamic>)
      .map((e) => PokemonName.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PokemonSpeciesResponseToJson(
  _PokemonSpeciesResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'names': instance.names,
};

_PokemonName _$PokemonNameFromJson(Map<String, dynamic> json) => _PokemonName(
  name: json['name'] as String,
  language: NamedResource.fromJson(json['language'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PokemonNameToJson(_PokemonName instance) =>
    <String, dynamic>{'name': instance.name, 'language': instance.language};

_PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) =>
    _PokemonListResponse(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => NamedResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListResponseToJson(
  _PokemonListResponse instance,
) => <String, dynamic>{'count': instance.count, 'results': instance.results};

_NamedResource _$NamedResourceFromJson(Map<String, dynamic> json) =>
    _NamedResource(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$NamedResourceToJson(_NamedResource instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
