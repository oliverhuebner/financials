// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageModel {

 String get text;@JsonKey(name: 'page_number') int get pageNumber;
/// Create a copy of PageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageModelCopyWith<PageModel> get copyWith => _$PageModelCopyWithImpl<PageModel>(this as PageModel, _$identity);

  /// Serializes this PageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageModel&&(identical(other.text, text) || other.text == text)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,pageNumber);

@override
String toString() {
  return 'PageModel(text: $text, pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class $PageModelCopyWith<$Res>  {
  factory $PageModelCopyWith(PageModel value, $Res Function(PageModel) _then) = _$PageModelCopyWithImpl;
@useResult
$Res call({
 String text,@JsonKey(name: 'page_number') int pageNumber
});




}
/// @nodoc
class _$PageModelCopyWithImpl<$Res>
    implements $PageModelCopyWith<$Res> {
  _$PageModelCopyWithImpl(this._self, this._then);

  final PageModel _self;
  final $Res Function(PageModel) _then;

/// Create a copy of PageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? pageNumber = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PageModel].
extension PageModelPatterns on PageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageModel value)  $default,){
final _that = this;
switch (_that) {
case _PageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageModel value)?  $default,){
final _that = this;
switch (_that) {
case _PageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text, @JsonKey(name: 'page_number')  int pageNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageModel() when $default != null:
return $default(_that.text,_that.pageNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text, @JsonKey(name: 'page_number')  int pageNumber)  $default,) {final _that = this;
switch (_that) {
case _PageModel():
return $default(_that.text,_that.pageNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text, @JsonKey(name: 'page_number')  int pageNumber)?  $default,) {final _that = this;
switch (_that) {
case _PageModel() when $default != null:
return $default(_that.text,_that.pageNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageModel implements PageModel {
   _PageModel({required this.text, @JsonKey(name: 'page_number') required this.pageNumber});
  factory _PageModel.fromJson(Map<String, dynamic> json) => _$PageModelFromJson(json);

@override final  String text;
@override@JsonKey(name: 'page_number') final  int pageNumber;

/// Create a copy of PageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageModelCopyWith<_PageModel> get copyWith => __$PageModelCopyWithImpl<_PageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageModel&&(identical(other.text, text) || other.text == text)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,pageNumber);

@override
String toString() {
  return 'PageModel(text: $text, pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class _$PageModelCopyWith<$Res> implements $PageModelCopyWith<$Res> {
  factory _$PageModelCopyWith(_PageModel value, $Res Function(_PageModel) _then) = __$PageModelCopyWithImpl;
@override @useResult
$Res call({
 String text,@JsonKey(name: 'page_number') int pageNumber
});




}
/// @nodoc
class __$PageModelCopyWithImpl<$Res>
    implements _$PageModelCopyWith<$Res> {
  __$PageModelCopyWithImpl(this._self, this._then);

  final _PageModel _self;
  final $Res Function(_PageModel) _then;

/// Create a copy of PageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? pageNumber = null,}) {
  return _then(_PageModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
