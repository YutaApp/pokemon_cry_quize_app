// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizResult {

 QuizQuestion get question;/// ユーザーが選んだポケモンID (タイムアウト時は null)
 int? get selectedId;/// 回答にかかった秒数
 double get elapsedSeconds;
/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizResultCopyWith<QuizResult> get copyWith => _$QuizResultCopyWithImpl<QuizResult>(this as QuizResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizResult&&(identical(other.question, question) || other.question == question)&&(identical(other.selectedId, selectedId) || other.selectedId == selectedId)&&(identical(other.elapsedSeconds, elapsedSeconds) || other.elapsedSeconds == elapsedSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,question,selectedId,elapsedSeconds);

@override
String toString() {
  return 'QuizResult(question: $question, selectedId: $selectedId, elapsedSeconds: $elapsedSeconds)';
}


}

/// @nodoc
abstract mixin class $QuizResultCopyWith<$Res>  {
  factory $QuizResultCopyWith(QuizResult value, $Res Function(QuizResult) _then) = _$QuizResultCopyWithImpl;
@useResult
$Res call({
 QuizQuestion question, int? selectedId, double elapsedSeconds
});


$QuizQuestionCopyWith<$Res> get question;

}
/// @nodoc
class _$QuizResultCopyWithImpl<$Res>
    implements $QuizResultCopyWith<$Res> {
  _$QuizResultCopyWithImpl(this._self, this._then);

  final QuizResult _self;
  final $Res Function(QuizResult) _then;

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? selectedId = freezed,Object? elapsedSeconds = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as QuizQuestion,selectedId: freezed == selectedId ? _self.selectedId : selectedId // ignore: cast_nullable_to_non_nullable
as int?,elapsedSeconds: null == elapsedSeconds ? _self.elapsedSeconds : elapsedSeconds // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuizQuestionCopyWith<$Res> get question {
  
  return $QuizQuestionCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuizResult].
extension QuizResultPatterns on QuizResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizResult value)  $default,){
final _that = this;
switch (_that) {
case _QuizResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizResult value)?  $default,){
final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QuizQuestion question,  int? selectedId,  double elapsedSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
return $default(_that.question,_that.selectedId,_that.elapsedSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QuizQuestion question,  int? selectedId,  double elapsedSeconds)  $default,) {final _that = this;
switch (_that) {
case _QuizResult():
return $default(_that.question,_that.selectedId,_that.elapsedSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QuizQuestion question,  int? selectedId,  double elapsedSeconds)?  $default,) {final _that = this;
switch (_that) {
case _QuizResult() when $default != null:
return $default(_that.question,_that.selectedId,_that.elapsedSeconds);case _:
  return null;

}
}

}

/// @nodoc


class _QuizResult extends QuizResult {
  const _QuizResult({required this.question, this.selectedId, required this.elapsedSeconds}): super._();
  

@override final  QuizQuestion question;
/// ユーザーが選んだポケモンID (タイムアウト時は null)
@override final  int? selectedId;
/// 回答にかかった秒数
@override final  double elapsedSeconds;

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizResultCopyWith<_QuizResult> get copyWith => __$QuizResultCopyWithImpl<_QuizResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizResult&&(identical(other.question, question) || other.question == question)&&(identical(other.selectedId, selectedId) || other.selectedId == selectedId)&&(identical(other.elapsedSeconds, elapsedSeconds) || other.elapsedSeconds == elapsedSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,question,selectedId,elapsedSeconds);

@override
String toString() {
  return 'QuizResult(question: $question, selectedId: $selectedId, elapsedSeconds: $elapsedSeconds)';
}


}

/// @nodoc
abstract mixin class _$QuizResultCopyWith<$Res> implements $QuizResultCopyWith<$Res> {
  factory _$QuizResultCopyWith(_QuizResult value, $Res Function(_QuizResult) _then) = __$QuizResultCopyWithImpl;
@override @useResult
$Res call({
 QuizQuestion question, int? selectedId, double elapsedSeconds
});


@override $QuizQuestionCopyWith<$Res> get question;

}
/// @nodoc
class __$QuizResultCopyWithImpl<$Res>
    implements _$QuizResultCopyWith<$Res> {
  __$QuizResultCopyWithImpl(this._self, this._then);

  final _QuizResult _self;
  final $Res Function(_QuizResult) _then;

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? selectedId = freezed,Object? elapsedSeconds = null,}) {
  return _then(_QuizResult(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as QuizQuestion,selectedId: freezed == selectedId ? _self.selectedId : selectedId // ignore: cast_nullable_to_non_nullable
as int?,elapsedSeconds: null == elapsedSeconds ? _self.elapsedSeconds : elapsedSeconds // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of QuizResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuizQuestionCopyWith<$Res> get question {
  
  return $QuizQuestionCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}

// dart format on
