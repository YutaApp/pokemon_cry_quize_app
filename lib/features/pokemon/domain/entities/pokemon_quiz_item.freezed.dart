// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_quiz_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonQuizItem {

 int get id;/// 日本語名 (pokemon-species から取得)
 String get nameJa;/// 英語スラッグ (pokemon.name)
 String get nameEn;/// 鳴き声 OGG の URL
 String get criesUrl;/// 公式アートワーク URL (nullable: 一部ポケモンは未収録)
 String? get artworkUrl;/// タイプ名リスト (例: ["fire", "flying"])
 List<String> get types;
/// Create a copy of PokemonQuizItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonQuizItemCopyWith<PokemonQuizItem> get copyWith => _$PokemonQuizItemCopyWithImpl<PokemonQuizItem>(this as PokemonQuizItem, _$identity);

  /// Serializes this PokemonQuizItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonQuizItem&&(identical(other.id, id) || other.id == id)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.criesUrl, criesUrl) || other.criesUrl == criesUrl)&&(identical(other.artworkUrl, artworkUrl) || other.artworkUrl == artworkUrl)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameJa,nameEn,criesUrl,artworkUrl,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PokemonQuizItem(id: $id, nameJa: $nameJa, nameEn: $nameEn, criesUrl: $criesUrl, artworkUrl: $artworkUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class $PokemonQuizItemCopyWith<$Res>  {
  factory $PokemonQuizItemCopyWith(PokemonQuizItem value, $Res Function(PokemonQuizItem) _then) = _$PokemonQuizItemCopyWithImpl;
@useResult
$Res call({
 int id, String nameJa, String nameEn, String criesUrl, String? artworkUrl, List<String> types
});




}
/// @nodoc
class _$PokemonQuizItemCopyWithImpl<$Res>
    implements $PokemonQuizItemCopyWith<$Res> {
  _$PokemonQuizItemCopyWithImpl(this._self, this._then);

  final PokemonQuizItem _self;
  final $Res Function(PokemonQuizItem) _then;

/// Create a copy of PokemonQuizItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameJa = null,Object? nameEn = null,Object? criesUrl = null,Object? artworkUrl = freezed,Object? types = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameJa: null == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,criesUrl: null == criesUrl ? _self.criesUrl : criesUrl // ignore: cast_nullable_to_non_nullable
as String,artworkUrl: freezed == artworkUrl ? _self.artworkUrl : artworkUrl // ignore: cast_nullable_to_non_nullable
as String?,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonQuizItem].
extension PokemonQuizItemPatterns on PokemonQuizItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonQuizItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonQuizItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonQuizItem value)  $default,){
final _that = this;
switch (_that) {
case _PokemonQuizItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonQuizItem value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonQuizItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nameJa,  String nameEn,  String criesUrl,  String? artworkUrl,  List<String> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonQuizItem() when $default != null:
return $default(_that.id,_that.nameJa,_that.nameEn,_that.criesUrl,_that.artworkUrl,_that.types);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nameJa,  String nameEn,  String criesUrl,  String? artworkUrl,  List<String> types)  $default,) {final _that = this;
switch (_that) {
case _PokemonQuizItem():
return $default(_that.id,_that.nameJa,_that.nameEn,_that.criesUrl,_that.artworkUrl,_that.types);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nameJa,  String nameEn,  String criesUrl,  String? artworkUrl,  List<String> types)?  $default,) {final _that = this;
switch (_that) {
case _PokemonQuizItem() when $default != null:
return $default(_that.id,_that.nameJa,_that.nameEn,_that.criesUrl,_that.artworkUrl,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonQuizItem implements PokemonQuizItem {
  const _PokemonQuizItem({required this.id, required this.nameJa, required this.nameEn, required this.criesUrl, this.artworkUrl, required final  List<String> types}): _types = types;
  factory _PokemonQuizItem.fromJson(Map<String, dynamic> json) => _$PokemonQuizItemFromJson(json);

@override final  int id;
/// 日本語名 (pokemon-species から取得)
@override final  String nameJa;
/// 英語スラッグ (pokemon.name)
@override final  String nameEn;
/// 鳴き声 OGG の URL
@override final  String criesUrl;
/// 公式アートワーク URL (nullable: 一部ポケモンは未収録)
@override final  String? artworkUrl;
/// タイプ名リスト (例: ["fire", "flying"])
 final  List<String> _types;
/// タイプ名リスト (例: ["fire", "flying"])
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of PokemonQuizItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonQuizItemCopyWith<_PokemonQuizItem> get copyWith => __$PokemonQuizItemCopyWithImpl<_PokemonQuizItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonQuizItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonQuizItem&&(identical(other.id, id) || other.id == id)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.criesUrl, criesUrl) || other.criesUrl == criesUrl)&&(identical(other.artworkUrl, artworkUrl) || other.artworkUrl == artworkUrl)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameJa,nameEn,criesUrl,artworkUrl,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PokemonQuizItem(id: $id, nameJa: $nameJa, nameEn: $nameEn, criesUrl: $criesUrl, artworkUrl: $artworkUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PokemonQuizItemCopyWith<$Res> implements $PokemonQuizItemCopyWith<$Res> {
  factory _$PokemonQuizItemCopyWith(_PokemonQuizItem value, $Res Function(_PokemonQuizItem) _then) = __$PokemonQuizItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String nameJa, String nameEn, String criesUrl, String? artworkUrl, List<String> types
});




}
/// @nodoc
class __$PokemonQuizItemCopyWithImpl<$Res>
    implements _$PokemonQuizItemCopyWith<$Res> {
  __$PokemonQuizItemCopyWithImpl(this._self, this._then);

  final _PokemonQuizItem _self;
  final $Res Function(_PokemonQuizItem) _then;

/// Create a copy of PokemonQuizItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameJa = null,Object? nameEn = null,Object? criesUrl = null,Object? artworkUrl = freezed,Object? types = null,}) {
  return _then(_PokemonQuizItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameJa: null == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,criesUrl: null == criesUrl ? _self.criesUrl : criesUrl // ignore: cast_nullable_to_non_nullable
as String,artworkUrl: freezed == artworkUrl ? _self.artworkUrl : artworkUrl // ignore: cast_nullable_to_non_nullable
as String?,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
