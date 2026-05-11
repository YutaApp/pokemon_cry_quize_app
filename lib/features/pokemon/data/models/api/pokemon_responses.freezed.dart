// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonResponse {

 int get id; String get name; PokemonCries get cries; PokemonSprites get sprites; List<PokemonTypeSlot> get types;
/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonResponseCopyWith<PokemonResponse> get copyWith => _$PokemonResponseCopyWithImpl<PokemonResponse>(this as PokemonResponse, _$identity);

  /// Serializes this PokemonResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cries, cries) || other.cries == cries)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cries,sprites,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PokemonResponse(id: $id, name: $name, cries: $cries, sprites: $sprites, types: $types)';
}


}

/// @nodoc
abstract mixin class $PokemonResponseCopyWith<$Res>  {
  factory $PokemonResponseCopyWith(PokemonResponse value, $Res Function(PokemonResponse) _then) = _$PokemonResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name, PokemonCries cries, PokemonSprites sprites, List<PokemonTypeSlot> types
});


$PokemonCriesCopyWith<$Res> get cries;$PokemonSpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._self, this._then);

  final PokemonResponse _self;
  final $Res Function(PokemonResponse) _then;

/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? cries = null,Object? sprites = null,Object? types = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cries: null == cries ? _self.cries : cries // ignore: cast_nullable_to_non_nullable
as PokemonCries,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as PokemonSprites,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonTypeSlot>,
  ));
}
/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonCriesCopyWith<$Res> get cries {
  
  return $PokemonCriesCopyWith<$Res>(_self.cries, (value) {
    return _then(_self.copyWith(cries: value));
  });
}/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesCopyWith<$Res> get sprites {
  
  return $PokemonSpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonResponse].
extension PokemonResponsePatterns on PokemonResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonResponse value)  $default,){
final _that = this;
switch (_that) {
case _PokemonResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  PokemonCries cries,  PokemonSprites sprites,  List<PokemonTypeSlot> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonResponse() when $default != null:
return $default(_that.id,_that.name,_that.cries,_that.sprites,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  PokemonCries cries,  PokemonSprites sprites,  List<PokemonTypeSlot> types)  $default,) {final _that = this;
switch (_that) {
case _PokemonResponse():
return $default(_that.id,_that.name,_that.cries,_that.sprites,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  PokemonCries cries,  PokemonSprites sprites,  List<PokemonTypeSlot> types)?  $default,) {final _that = this;
switch (_that) {
case _PokemonResponse() when $default != null:
return $default(_that.id,_that.name,_that.cries,_that.sprites,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonResponse implements PokemonResponse {
  const _PokemonResponse({required this.id, required this.name, required this.cries, required this.sprites, required final  List<PokemonTypeSlot> types}): _types = types;
  factory _PokemonResponse.fromJson(Map<String, dynamic> json) => _$PokemonResponseFromJson(json);

@override final  int id;
@override final  String name;
@override final  PokemonCries cries;
@override final  PokemonSprites sprites;
 final  List<PokemonTypeSlot> _types;
@override List<PokemonTypeSlot> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonResponseCopyWith<_PokemonResponse> get copyWith => __$PokemonResponseCopyWithImpl<_PokemonResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cries, cries) || other.cries == cries)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cries,sprites,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PokemonResponse(id: $id, name: $name, cries: $cries, sprites: $sprites, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PokemonResponseCopyWith<$Res> implements $PokemonResponseCopyWith<$Res> {
  factory _$PokemonResponseCopyWith(_PokemonResponse value, $Res Function(_PokemonResponse) _then) = __$PokemonResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, PokemonCries cries, PokemonSprites sprites, List<PokemonTypeSlot> types
});


@override $PokemonCriesCopyWith<$Res> get cries;@override $PokemonSpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class __$PokemonResponseCopyWithImpl<$Res>
    implements _$PokemonResponseCopyWith<$Res> {
  __$PokemonResponseCopyWithImpl(this._self, this._then);

  final _PokemonResponse _self;
  final $Res Function(_PokemonResponse) _then;

/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? cries = null,Object? sprites = null,Object? types = null,}) {
  return _then(_PokemonResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cries: null == cries ? _self.cries : cries // ignore: cast_nullable_to_non_nullable
as PokemonCries,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as PokemonSprites,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonTypeSlot>,
  ));
}

/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonCriesCopyWith<$Res> get cries {
  
  return $PokemonCriesCopyWith<$Res>(_self.cries, (value) {
    return _then(_self.copyWith(cries: value));
  });
}/// Create a copy of PokemonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesCopyWith<$Res> get sprites {
  
  return $PokemonSpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
mixin _$PokemonCries {

 String get latest; String? get legacy;
/// Create a copy of PokemonCries
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCriesCopyWith<PokemonCries> get copyWith => _$PokemonCriesCopyWithImpl<PokemonCries>(this as PokemonCries, _$identity);

  /// Serializes this PokemonCries to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCries&&(identical(other.latest, latest) || other.latest == latest)&&(identical(other.legacy, legacy) || other.legacy == legacy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latest,legacy);

@override
String toString() {
  return 'PokemonCries(latest: $latest, legacy: $legacy)';
}


}

/// @nodoc
abstract mixin class $PokemonCriesCopyWith<$Res>  {
  factory $PokemonCriesCopyWith(PokemonCries value, $Res Function(PokemonCries) _then) = _$PokemonCriesCopyWithImpl;
@useResult
$Res call({
 String latest, String? legacy
});




}
/// @nodoc
class _$PokemonCriesCopyWithImpl<$Res>
    implements $PokemonCriesCopyWith<$Res> {
  _$PokemonCriesCopyWithImpl(this._self, this._then);

  final PokemonCries _self;
  final $Res Function(PokemonCries) _then;

/// Create a copy of PokemonCries
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latest = null,Object? legacy = freezed,}) {
  return _then(_self.copyWith(
latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as String,legacy: freezed == legacy ? _self.legacy : legacy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonCries].
extension PokemonCriesPatterns on PokemonCries {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonCries value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonCries() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonCries value)  $default,){
final _that = this;
switch (_that) {
case _PokemonCries():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonCries value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonCries() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String latest,  String? legacy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonCries() when $default != null:
return $default(_that.latest,_that.legacy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String latest,  String? legacy)  $default,) {final _that = this;
switch (_that) {
case _PokemonCries():
return $default(_that.latest,_that.legacy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String latest,  String? legacy)?  $default,) {final _that = this;
switch (_that) {
case _PokemonCries() when $default != null:
return $default(_that.latest,_that.legacy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonCries implements PokemonCries {
  const _PokemonCries({required this.latest, this.legacy});
  factory _PokemonCries.fromJson(Map<String, dynamic> json) => _$PokemonCriesFromJson(json);

@override final  String latest;
@override final  String? legacy;

/// Create a copy of PokemonCries
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCriesCopyWith<_PokemonCries> get copyWith => __$PokemonCriesCopyWithImpl<_PokemonCries>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonCriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCries&&(identical(other.latest, latest) || other.latest == latest)&&(identical(other.legacy, legacy) || other.legacy == legacy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latest,legacy);

@override
String toString() {
  return 'PokemonCries(latest: $latest, legacy: $legacy)';
}


}

/// @nodoc
abstract mixin class _$PokemonCriesCopyWith<$Res> implements $PokemonCriesCopyWith<$Res> {
  factory _$PokemonCriesCopyWith(_PokemonCries value, $Res Function(_PokemonCries) _then) = __$PokemonCriesCopyWithImpl;
@override @useResult
$Res call({
 String latest, String? legacy
});




}
/// @nodoc
class __$PokemonCriesCopyWithImpl<$Res>
    implements _$PokemonCriesCopyWith<$Res> {
  __$PokemonCriesCopyWithImpl(this._self, this._then);

  final _PokemonCries _self;
  final $Res Function(_PokemonCries) _then;

/// Create a copy of PokemonCries
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latest = null,Object? legacy = freezed,}) {
  return _then(_PokemonCries(
latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as String,legacy: freezed == legacy ? _self.legacy : legacy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PokemonSprites {

@JsonKey(name: 'other') PokemonSpritesOther get other;
/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpritesCopyWith<PokemonSprites> get copyWith => _$PokemonSpritesCopyWithImpl<PokemonSprites>(this as PokemonSprites, _$identity);

  /// Serializes this PokemonSprites to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSprites&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,other);

@override
String toString() {
  return 'PokemonSprites(other: $other)';
}


}

/// @nodoc
abstract mixin class $PokemonSpritesCopyWith<$Res>  {
  factory $PokemonSpritesCopyWith(PokemonSprites value, $Res Function(PokemonSprites) _then) = _$PokemonSpritesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'other') PokemonSpritesOther other
});


$PokemonSpritesOtherCopyWith<$Res> get other;

}
/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._self, this._then);

  final PokemonSprites _self;
  final $Res Function(PokemonSprites) _then;

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? other = null,}) {
  return _then(_self.copyWith(
other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as PokemonSpritesOther,
  ));
}
/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesOtherCopyWith<$Res> get other {
  
  return $PokemonSpritesOtherCopyWith<$Res>(_self.other, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonSprites].
extension PokemonSpritesPatterns on PokemonSprites {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSprites value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSprites value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSprites():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSprites value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'other')  PokemonSpritesOther other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
return $default(_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'other')  PokemonSpritesOther other)  $default,) {final _that = this;
switch (_that) {
case _PokemonSprites():
return $default(_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'other')  PokemonSpritesOther other)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
return $default(_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSprites implements PokemonSprites {
  const _PokemonSprites({@JsonKey(name: 'other') required this.other});
  factory _PokemonSprites.fromJson(Map<String, dynamic> json) => _$PokemonSpritesFromJson(json);

@override@JsonKey(name: 'other') final  PokemonSpritesOther other;

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpritesCopyWith<_PokemonSprites> get copyWith => __$PokemonSpritesCopyWithImpl<_PokemonSprites>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpritesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSprites&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,other);

@override
String toString() {
  return 'PokemonSprites(other: $other)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpritesCopyWith<$Res> implements $PokemonSpritesCopyWith<$Res> {
  factory _$PokemonSpritesCopyWith(_PokemonSprites value, $Res Function(_PokemonSprites) _then) = __$PokemonSpritesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'other') PokemonSpritesOther other
});


@override $PokemonSpritesOtherCopyWith<$Res> get other;

}
/// @nodoc
class __$PokemonSpritesCopyWithImpl<$Res>
    implements _$PokemonSpritesCopyWith<$Res> {
  __$PokemonSpritesCopyWithImpl(this._self, this._then);

  final _PokemonSprites _self;
  final $Res Function(_PokemonSprites) _then;

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? other = null,}) {
  return _then(_PokemonSprites(
other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as PokemonSpritesOther,
  ));
}

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesOtherCopyWith<$Res> get other {
  
  return $PokemonSpritesOtherCopyWith<$Res>(_self.other, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// @nodoc
mixin _$PokemonSpritesOther {

@JsonKey(name: 'official-artwork') PokemonOfficialArtwork get officialArtwork;
/// Create a copy of PokemonSpritesOther
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpritesOtherCopyWith<PokemonSpritesOther> get copyWith => _$PokemonSpritesOtherCopyWithImpl<PokemonSpritesOther>(this as PokemonSpritesOther, _$identity);

  /// Serializes this PokemonSpritesOther to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpritesOther&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'PokemonSpritesOther(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class $PokemonSpritesOtherCopyWith<$Res>  {
  factory $PokemonSpritesOtherCopyWith(PokemonSpritesOther value, $Res Function(PokemonSpritesOther) _then) = _$PokemonSpritesOtherCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'official-artwork') PokemonOfficialArtwork officialArtwork
});


$PokemonOfficialArtworkCopyWith<$Res> get officialArtwork;

}
/// @nodoc
class _$PokemonSpritesOtherCopyWithImpl<$Res>
    implements $PokemonSpritesOtherCopyWith<$Res> {
  _$PokemonSpritesOtherCopyWithImpl(this._self, this._then);

  final PokemonSpritesOther _self;
  final $Res Function(PokemonSpritesOther) _then;

/// Create a copy of PokemonSpritesOther
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? officialArtwork = null,}) {
  return _then(_self.copyWith(
officialArtwork: null == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as PokemonOfficialArtwork,
  ));
}
/// Create a copy of PokemonSpritesOther
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonOfficialArtworkCopyWith<$Res> get officialArtwork {
  
  return $PokemonOfficialArtworkCopyWith<$Res>(_self.officialArtwork, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonSpritesOther].
extension PokemonSpritesOtherPatterns on PokemonSpritesOther {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpritesOther value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpritesOther() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpritesOther value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpritesOther():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpritesOther value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpritesOther() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'official-artwork')  PokemonOfficialArtwork officialArtwork)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpritesOther() when $default != null:
return $default(_that.officialArtwork);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'official-artwork')  PokemonOfficialArtwork officialArtwork)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpritesOther():
return $default(_that.officialArtwork);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'official-artwork')  PokemonOfficialArtwork officialArtwork)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpritesOther() when $default != null:
return $default(_that.officialArtwork);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpritesOther implements PokemonSpritesOther {
  const _PokemonSpritesOther({@JsonKey(name: 'official-artwork') required this.officialArtwork});
  factory _PokemonSpritesOther.fromJson(Map<String, dynamic> json) => _$PokemonSpritesOtherFromJson(json);

@override@JsonKey(name: 'official-artwork') final  PokemonOfficialArtwork officialArtwork;

/// Create a copy of PokemonSpritesOther
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpritesOtherCopyWith<_PokemonSpritesOther> get copyWith => __$PokemonSpritesOtherCopyWithImpl<_PokemonSpritesOther>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpritesOtherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpritesOther&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'PokemonSpritesOther(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpritesOtherCopyWith<$Res> implements $PokemonSpritesOtherCopyWith<$Res> {
  factory _$PokemonSpritesOtherCopyWith(_PokemonSpritesOther value, $Res Function(_PokemonSpritesOther) _then) = __$PokemonSpritesOtherCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'official-artwork') PokemonOfficialArtwork officialArtwork
});


@override $PokemonOfficialArtworkCopyWith<$Res> get officialArtwork;

}
/// @nodoc
class __$PokemonSpritesOtherCopyWithImpl<$Res>
    implements _$PokemonSpritesOtherCopyWith<$Res> {
  __$PokemonSpritesOtherCopyWithImpl(this._self, this._then);

  final _PokemonSpritesOther _self;
  final $Res Function(_PokemonSpritesOther) _then;

/// Create a copy of PokemonSpritesOther
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? officialArtwork = null,}) {
  return _then(_PokemonSpritesOther(
officialArtwork: null == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as PokemonOfficialArtwork,
  ));
}

/// Create a copy of PokemonSpritesOther
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonOfficialArtworkCopyWith<$Res> get officialArtwork {
  
  return $PokemonOfficialArtworkCopyWith<$Res>(_self.officialArtwork, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// @nodoc
mixin _$PokemonOfficialArtwork {

@JsonKey(name: 'front_default') String? get frontDefault;
/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonOfficialArtworkCopyWith<PokemonOfficialArtwork> get copyWith => _$PokemonOfficialArtworkCopyWithImpl<PokemonOfficialArtwork>(this as PokemonOfficialArtwork, _$identity);

  /// Serializes this PokemonOfficialArtwork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonOfficialArtwork&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'PokemonOfficialArtwork(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class $PokemonOfficialArtworkCopyWith<$Res>  {
  factory $PokemonOfficialArtworkCopyWith(PokemonOfficialArtwork value, $Res Function(PokemonOfficialArtwork) _then) = _$PokemonOfficialArtworkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault
});




}
/// @nodoc
class _$PokemonOfficialArtworkCopyWithImpl<$Res>
    implements $PokemonOfficialArtworkCopyWith<$Res> {
  _$PokemonOfficialArtworkCopyWithImpl(this._self, this._then);

  final PokemonOfficialArtwork _self;
  final $Res Function(PokemonOfficialArtwork) _then;

/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonOfficialArtwork].
extension PokemonOfficialArtworkPatterns on PokemonOfficialArtwork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonOfficialArtwork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonOfficialArtwork value)  $default,){
final _that = this;
switch (_that) {
case _PokemonOfficialArtwork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonOfficialArtwork value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault)  $default,) {final _that = this;
switch (_that) {
case _PokemonOfficialArtwork():
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String? frontDefault)?  $default,) {final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
return $default(_that.frontDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonOfficialArtwork implements PokemonOfficialArtwork {
  const _PokemonOfficialArtwork({@JsonKey(name: 'front_default') required this.frontDefault});
  factory _PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) => _$PokemonOfficialArtworkFromJson(json);

@override@JsonKey(name: 'front_default') final  String? frontDefault;

/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonOfficialArtworkCopyWith<_PokemonOfficialArtwork> get copyWith => __$PokemonOfficialArtworkCopyWithImpl<_PokemonOfficialArtwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonOfficialArtworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonOfficialArtwork&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'PokemonOfficialArtwork(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class _$PokemonOfficialArtworkCopyWith<$Res> implements $PokemonOfficialArtworkCopyWith<$Res> {
  factory _$PokemonOfficialArtworkCopyWith(_PokemonOfficialArtwork value, $Res Function(_PokemonOfficialArtwork) _then) = __$PokemonOfficialArtworkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault
});




}
/// @nodoc
class __$PokemonOfficialArtworkCopyWithImpl<$Res>
    implements _$PokemonOfficialArtworkCopyWith<$Res> {
  __$PokemonOfficialArtworkCopyWithImpl(this._self, this._then);

  final _PokemonOfficialArtwork _self;
  final $Res Function(_PokemonOfficialArtwork) _then;

/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,}) {
  return _then(_PokemonOfficialArtwork(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PokemonTypeSlot {

 int get slot; NamedResource get type;
/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonTypeSlotCopyWith<PokemonTypeSlot> get copyWith => _$PokemonTypeSlotCopyWithImpl<PokemonTypeSlot>(this as PokemonTypeSlot, _$identity);

  /// Serializes this PokemonTypeSlot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonTypeSlot&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonTypeSlot(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $PokemonTypeSlotCopyWith<$Res>  {
  factory $PokemonTypeSlotCopyWith(PokemonTypeSlot value, $Res Function(PokemonTypeSlot) _then) = _$PokemonTypeSlotCopyWithImpl;
@useResult
$Res call({
 int slot, NamedResource type
});


$NamedResourceCopyWith<$Res> get type;

}
/// @nodoc
class _$PokemonTypeSlotCopyWithImpl<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  _$PokemonTypeSlotCopyWithImpl(this._self, this._then);

  final PokemonTypeSlot _self;
  final $Res Function(PokemonTypeSlot) _then;

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NamedResource,
  ));
}
/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedResourceCopyWith<$Res> get type {
  
  return $NamedResourceCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonTypeSlot].
extension PokemonTypeSlotPatterns on PokemonTypeSlot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonTypeSlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonTypeSlot value)  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeSlot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonTypeSlot value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  NamedResource type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  NamedResource type)  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeSlot():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  NamedResource type)?  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonTypeSlot implements PokemonTypeSlot {
  const _PokemonTypeSlot({required this.slot, required this.type});
  factory _PokemonTypeSlot.fromJson(Map<String, dynamic> json) => _$PokemonTypeSlotFromJson(json);

@override final  int slot;
@override final  NamedResource type;

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonTypeSlotCopyWith<_PokemonTypeSlot> get copyWith => __$PokemonTypeSlotCopyWithImpl<_PokemonTypeSlot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonTypeSlotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonTypeSlot&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonTypeSlot(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PokemonTypeSlotCopyWith<$Res> implements $PokemonTypeSlotCopyWith<$Res> {
  factory _$PokemonTypeSlotCopyWith(_PokemonTypeSlot value, $Res Function(_PokemonTypeSlot) _then) = __$PokemonTypeSlotCopyWithImpl;
@override @useResult
$Res call({
 int slot, NamedResource type
});


@override $NamedResourceCopyWith<$Res> get type;

}
/// @nodoc
class __$PokemonTypeSlotCopyWithImpl<$Res>
    implements _$PokemonTypeSlotCopyWith<$Res> {
  __$PokemonTypeSlotCopyWithImpl(this._self, this._then);

  final _PokemonTypeSlot _self;
  final $Res Function(_PokemonTypeSlot) _then;

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_PokemonTypeSlot(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NamedResource,
  ));
}

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedResourceCopyWith<$Res> get type {
  
  return $NamedResourceCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$PokemonSpeciesResponse {

 int get id; String get name; List<PokemonName> get names;
/// Create a copy of PokemonSpeciesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpeciesResponseCopyWith<PokemonSpeciesResponse> get copyWith => _$PokemonSpeciesResponseCopyWithImpl<PokemonSpeciesResponse>(this as PokemonSpeciesResponse, _$identity);

  /// Serializes this PokemonSpeciesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpeciesResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.names, names));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(names));

@override
String toString() {
  return 'PokemonSpeciesResponse(id: $id, name: $name, names: $names)';
}


}

/// @nodoc
abstract mixin class $PokemonSpeciesResponseCopyWith<$Res>  {
  factory $PokemonSpeciesResponseCopyWith(PokemonSpeciesResponse value, $Res Function(PokemonSpeciesResponse) _then) = _$PokemonSpeciesResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<PokemonName> names
});




}
/// @nodoc
class _$PokemonSpeciesResponseCopyWithImpl<$Res>
    implements $PokemonSpeciesResponseCopyWith<$Res> {
  _$PokemonSpeciesResponseCopyWithImpl(this._self, this._then);

  final PokemonSpeciesResponse _self;
  final $Res Function(PokemonSpeciesResponse) _then;

/// Create a copy of PokemonSpeciesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? names = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,names: null == names ? _self.names : names // ignore: cast_nullable_to_non_nullable
as List<PokemonName>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonSpeciesResponse].
extension PokemonSpeciesResponsePatterns on PokemonSpeciesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpeciesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpeciesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpeciesResponse value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpeciesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<PokemonName> names)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpeciesResponse() when $default != null:
return $default(_that.id,_that.name,_that.names);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<PokemonName> names)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesResponse():
return $default(_that.id,_that.name,_that.names);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<PokemonName> names)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesResponse() when $default != null:
return $default(_that.id,_that.name,_that.names);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpeciesResponse implements PokemonSpeciesResponse {
  const _PokemonSpeciesResponse({required this.id, required this.name, required final  List<PokemonName> names}): _names = names;
  factory _PokemonSpeciesResponse.fromJson(Map<String, dynamic> json) => _$PokemonSpeciesResponseFromJson(json);

@override final  int id;
@override final  String name;
 final  List<PokemonName> _names;
@override List<PokemonName> get names {
  if (_names is EqualUnmodifiableListView) return _names;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_names);
}


/// Create a copy of PokemonSpeciesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpeciesResponseCopyWith<_PokemonSpeciesResponse> get copyWith => __$PokemonSpeciesResponseCopyWithImpl<_PokemonSpeciesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpeciesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpeciesResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._names, _names));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_names));

@override
String toString() {
  return 'PokemonSpeciesResponse(id: $id, name: $name, names: $names)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpeciesResponseCopyWith<$Res> implements $PokemonSpeciesResponseCopyWith<$Res> {
  factory _$PokemonSpeciesResponseCopyWith(_PokemonSpeciesResponse value, $Res Function(_PokemonSpeciesResponse) _then) = __$PokemonSpeciesResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<PokemonName> names
});




}
/// @nodoc
class __$PokemonSpeciesResponseCopyWithImpl<$Res>
    implements _$PokemonSpeciesResponseCopyWith<$Res> {
  __$PokemonSpeciesResponseCopyWithImpl(this._self, this._then);

  final _PokemonSpeciesResponse _self;
  final $Res Function(_PokemonSpeciesResponse) _then;

/// Create a copy of PokemonSpeciesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? names = null,}) {
  return _then(_PokemonSpeciesResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,names: null == names ? _self._names : names // ignore: cast_nullable_to_non_nullable
as List<PokemonName>,
  ));
}


}


/// @nodoc
mixin _$PokemonName {

 String get name; NamedResource get language;
/// Create a copy of PokemonName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonNameCopyWith<PokemonName> get copyWith => _$PokemonNameCopyWithImpl<PokemonName>(this as PokemonName, _$identity);

  /// Serializes this PokemonName to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonName&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,language);

@override
String toString() {
  return 'PokemonName(name: $name, language: $language)';
}


}

/// @nodoc
abstract mixin class $PokemonNameCopyWith<$Res>  {
  factory $PokemonNameCopyWith(PokemonName value, $Res Function(PokemonName) _then) = _$PokemonNameCopyWithImpl;
@useResult
$Res call({
 String name, NamedResource language
});


$NamedResourceCopyWith<$Res> get language;

}
/// @nodoc
class _$PokemonNameCopyWithImpl<$Res>
    implements $PokemonNameCopyWith<$Res> {
  _$PokemonNameCopyWithImpl(this._self, this._then);

  final PokemonName _self;
  final $Res Function(PokemonName) _then;

/// Create a copy of PokemonName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? language = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as NamedResource,
  ));
}
/// Create a copy of PokemonName
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedResourceCopyWith<$Res> get language {
  
  return $NamedResourceCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonName].
extension PokemonNamePatterns on PokemonName {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonName() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonName value)  $default,){
final _that = this;
switch (_that) {
case _PokemonName():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonName value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonName() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  NamedResource language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonName() when $default != null:
return $default(_that.name,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  NamedResource language)  $default,) {final _that = this;
switch (_that) {
case _PokemonName():
return $default(_that.name,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  NamedResource language)?  $default,) {final _that = this;
switch (_that) {
case _PokemonName() when $default != null:
return $default(_that.name,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonName implements PokemonName {
  const _PokemonName({required this.name, required this.language});
  factory _PokemonName.fromJson(Map<String, dynamic> json) => _$PokemonNameFromJson(json);

@override final  String name;
@override final  NamedResource language;

/// Create a copy of PokemonName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonNameCopyWith<_PokemonName> get copyWith => __$PokemonNameCopyWithImpl<_PokemonName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonNameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonName&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,language);

@override
String toString() {
  return 'PokemonName(name: $name, language: $language)';
}


}

/// @nodoc
abstract mixin class _$PokemonNameCopyWith<$Res> implements $PokemonNameCopyWith<$Res> {
  factory _$PokemonNameCopyWith(_PokemonName value, $Res Function(_PokemonName) _then) = __$PokemonNameCopyWithImpl;
@override @useResult
$Res call({
 String name, NamedResource language
});


@override $NamedResourceCopyWith<$Res> get language;

}
/// @nodoc
class __$PokemonNameCopyWithImpl<$Res>
    implements _$PokemonNameCopyWith<$Res> {
  __$PokemonNameCopyWithImpl(this._self, this._then);

  final _PokemonName _self;
  final $Res Function(_PokemonName) _then;

/// Create a copy of PokemonName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? language = null,}) {
  return _then(_PokemonName(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as NamedResource,
  ));
}

/// Create a copy of PokemonName
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedResourceCopyWith<$Res> get language {
  
  return $NamedResourceCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// @nodoc
mixin _$PokemonListResponse {

 int get count; List<NamedResource> get results;
/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListResponseCopyWith<PokemonListResponse> get copyWith => _$PokemonListResponseCopyWithImpl<PokemonListResponse>(this as PokemonListResponse, _$identity);

  /// Serializes this PokemonListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListResponse&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PokemonListResponse(count: $count, results: $results)';
}


}

/// @nodoc
abstract mixin class $PokemonListResponseCopyWith<$Res>  {
  factory $PokemonListResponseCopyWith(PokemonListResponse value, $Res Function(PokemonListResponse) _then) = _$PokemonListResponseCopyWithImpl;
@useResult
$Res call({
 int count, List<NamedResource> results
});




}
/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._self, this._then);

  final PokemonListResponse _self;
  final $Res Function(PokemonListResponse) _then;

/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<NamedResource>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonListResponse].
extension PokemonListResponsePatterns on PokemonListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  List<NamedResource> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
return $default(_that.count,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  List<NamedResource> results)  $default,) {final _that = this;
switch (_that) {
case _PokemonListResponse():
return $default(_that.count,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  List<NamedResource> results)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
return $default(_that.count,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonListResponse implements PokemonListResponse {
  const _PokemonListResponse({required this.count, required final  List<NamedResource> results}): _results = results;
  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) => _$PokemonListResponseFromJson(json);

@override final  int count;
 final  List<NamedResource> _results;
@override List<NamedResource> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListResponseCopyWith<_PokemonListResponse> get copyWith => __$PokemonListResponseCopyWithImpl<_PokemonListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListResponse&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PokemonListResponse(count: $count, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PokemonListResponseCopyWith<$Res> implements $PokemonListResponseCopyWith<$Res> {
  factory _$PokemonListResponseCopyWith(_PokemonListResponse value, $Res Function(_PokemonListResponse) _then) = __$PokemonListResponseCopyWithImpl;
@override @useResult
$Res call({
 int count, List<NamedResource> results
});




}
/// @nodoc
class __$PokemonListResponseCopyWithImpl<$Res>
    implements _$PokemonListResponseCopyWith<$Res> {
  __$PokemonListResponseCopyWithImpl(this._self, this._then);

  final _PokemonListResponse _self;
  final $Res Function(_PokemonListResponse) _then;

/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? results = null,}) {
  return _then(_PokemonListResponse(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<NamedResource>,
  ));
}


}


/// @nodoc
mixin _$NamedResource {

 String get name; String get url;
/// Create a copy of NamedResource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NamedResourceCopyWith<NamedResource> get copyWith => _$NamedResourceCopyWithImpl<NamedResource>(this as NamedResource, _$identity);

  /// Serializes this NamedResource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NamedResource&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'NamedResource(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $NamedResourceCopyWith<$Res>  {
  factory $NamedResourceCopyWith(NamedResource value, $Res Function(NamedResource) _then) = _$NamedResourceCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$NamedResourceCopyWithImpl<$Res>
    implements $NamedResourceCopyWith<$Res> {
  _$NamedResourceCopyWithImpl(this._self, this._then);

  final NamedResource _self;
  final $Res Function(NamedResource) _then;

/// Create a copy of NamedResource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NamedResource].
extension NamedResourcePatterns on NamedResource {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NamedResource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NamedResource() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NamedResource value)  $default,){
final _that = this;
switch (_that) {
case _NamedResource():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NamedResource value)?  $default,){
final _that = this;
switch (_that) {
case _NamedResource() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NamedResource() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _NamedResource():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _NamedResource() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NamedResource extends NamedResource {
  const _NamedResource({required this.name, required this.url}): super._();
  factory _NamedResource.fromJson(Map<String, dynamic> json) => _$NamedResourceFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of NamedResource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NamedResourceCopyWith<_NamedResource> get copyWith => __$NamedResourceCopyWithImpl<_NamedResource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NamedResourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NamedResource&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'NamedResource(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$NamedResourceCopyWith<$Res> implements $NamedResourceCopyWith<$Res> {
  factory _$NamedResourceCopyWith(_NamedResource value, $Res Function(_NamedResource) _then) = __$NamedResourceCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$NamedResourceCopyWithImpl<$Res>
    implements _$NamedResourceCopyWith<$Res> {
  __$NamedResourceCopyWithImpl(this._self, this._then);

  final _NamedResource _self;
  final $Res Function(_NamedResource) _then;

/// Create a copy of NamedResource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_NamedResource(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
