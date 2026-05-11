// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_quiz_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonQuizItem _$PokemonQuizItemFromJson(Map<String, dynamic> json) =>
    _PokemonQuizItem(
      id: (json['id'] as num).toInt(),
      nameJa: json['nameJa'] as String,
      nameEn: json['nameEn'] as String,
      criesUrl: json['criesUrl'] as String,
      artworkUrl: json['artworkUrl'] as String?,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PokemonQuizItemToJson(_PokemonQuizItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameJa': instance.nameJa,
      'nameEn': instance.nameEn,
      'criesUrl': instance.criesUrl,
      'artworkUrl': instance.artworkUrl,
      'types': instance.types,
    };
