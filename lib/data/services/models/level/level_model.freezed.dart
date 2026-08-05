// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LevelModel {

@JsonKey(name: 'level_id') String get levelId; String get description; List<PageModel> get pages;
/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelModelCopyWith<LevelModel> get copyWith => _$LevelModelCopyWithImpl<LevelModel>(this as LevelModel, _$identity);

  /// Serializes this LevelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelModel&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.pages, pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelId,description,const DeepCollectionEquality().hash(pages));

@override
String toString() {
  return 'LevelModel(levelId: $levelId, description: $description, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $LevelModelCopyWith<$Res>  {
  factory $LevelModelCopyWith(LevelModel value, $Res Function(LevelModel) _then) = _$LevelModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'level_id') String levelId, String description, List<PageModel> pages
});




}
/// @nodoc
class _$LevelModelCopyWithImpl<$Res>
    implements $LevelModelCopyWith<$Res> {
  _$LevelModelCopyWithImpl(this._self, this._then);

  final LevelModel _self;
  final $Res Function(LevelModel) _then;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levelId = null,Object? description = null,Object? pages = null,}) {
  return _then(_self.copyWith(
levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<PageModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelModel].
extension LevelModelPatterns on LevelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelModel value)  $default,){
final _that = this;
switch (_that) {
case _LevelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelModel value)?  $default,){
final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'level_id')  String levelId,  String description,  List<PageModel> pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that.levelId,_that.description,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'level_id')  String levelId,  String description,  List<PageModel> pages)  $default,) {final _that = this;
switch (_that) {
case _LevelModel():
return $default(_that.levelId,_that.description,_that.pages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'level_id')  String levelId,  String description,  List<PageModel> pages)?  $default,) {final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that.levelId,_that.description,_that.pages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelModel implements LevelModel {
   _LevelModel({@JsonKey(name: 'level_id') required this.levelId, required this.description, final  List<PageModel> pages = const []}): _pages = pages;
  factory _LevelModel.fromJson(Map<String, dynamic> json) => _$LevelModelFromJson(json);

@override@JsonKey(name: 'level_id') final  String levelId;
@override final  String description;
 final  List<PageModel> _pages;
@override@JsonKey() List<PageModel> get pages {
  if (_pages is EqualUnmodifiableListView) return _pages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pages);
}


/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelModelCopyWith<_LevelModel> get copyWith => __$LevelModelCopyWithImpl<_LevelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelModel&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._pages, _pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelId,description,const DeepCollectionEquality().hash(_pages));

@override
String toString() {
  return 'LevelModel(levelId: $levelId, description: $description, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$LevelModelCopyWith<$Res> implements $LevelModelCopyWith<$Res> {
  factory _$LevelModelCopyWith(_LevelModel value, $Res Function(_LevelModel) _then) = __$LevelModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'level_id') String levelId, String description, List<PageModel> pages
});




}
/// @nodoc
class __$LevelModelCopyWithImpl<$Res>
    implements _$LevelModelCopyWith<$Res> {
  __$LevelModelCopyWithImpl(this._self, this._then);

  final _LevelModel _self;
  final $Res Function(_LevelModel) _then;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levelId = null,Object? description = null,Object? pages = null,}) {
  return _then(_LevelModel(
levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pages: null == pages ? _self._pages : pages // ignore: cast_nullable_to_non_nullable
as List<PageModel>,
  ));
}


}

// dart format on
