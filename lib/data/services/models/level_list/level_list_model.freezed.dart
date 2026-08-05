// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LevelListModel {

 List<LevelModel> get levelList;
/// Create a copy of LevelListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelListModelCopyWith<LevelListModel> get copyWith => _$LevelListModelCopyWithImpl<LevelListModel>(this as LevelListModel, _$identity);

  /// Serializes this LevelListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelListModel&&const DeepCollectionEquality().equals(other.levelList, levelList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(levelList));

@override
String toString() {
  return 'LevelListModel(levelList: $levelList)';
}


}

/// @nodoc
abstract mixin class $LevelListModelCopyWith<$Res>  {
  factory $LevelListModelCopyWith(LevelListModel value, $Res Function(LevelListModel) _then) = _$LevelListModelCopyWithImpl;
@useResult
$Res call({
 List<LevelModel> levelList
});




}
/// @nodoc
class _$LevelListModelCopyWithImpl<$Res>
    implements $LevelListModelCopyWith<$Res> {
  _$LevelListModelCopyWithImpl(this._self, this._then);

  final LevelListModel _self;
  final $Res Function(LevelListModel) _then;

/// Create a copy of LevelListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levelList = null,}) {
  return _then(_self.copyWith(
levelList: null == levelList ? _self.levelList : levelList // ignore: cast_nullable_to_non_nullable
as List<LevelModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelListModel].
extension LevelListModelPatterns on LevelListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelListModel value)  $default,){
final _that = this;
switch (_that) {
case _LevelListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelListModel value)?  $default,){
final _that = this;
switch (_that) {
case _LevelListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LevelModel> levelList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelListModel() when $default != null:
return $default(_that.levelList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LevelModel> levelList)  $default,) {final _that = this;
switch (_that) {
case _LevelListModel():
return $default(_that.levelList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LevelModel> levelList)?  $default,) {final _that = this;
switch (_that) {
case _LevelListModel() when $default != null:
return $default(_that.levelList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelListModel implements LevelListModel {
   _LevelListModel({final  List<LevelModel> levelList = const []}): _levelList = levelList;
  factory _LevelListModel.fromJson(Map<String, dynamic> json) => _$LevelListModelFromJson(json);

 final  List<LevelModel> _levelList;
@override@JsonKey() List<LevelModel> get levelList {
  if (_levelList is EqualUnmodifiableListView) return _levelList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levelList);
}


/// Create a copy of LevelListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelListModelCopyWith<_LevelListModel> get copyWith => __$LevelListModelCopyWithImpl<_LevelListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelListModel&&const DeepCollectionEquality().equals(other._levelList, _levelList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_levelList));

@override
String toString() {
  return 'LevelListModel(levelList: $levelList)';
}


}

/// @nodoc
abstract mixin class _$LevelListModelCopyWith<$Res> implements $LevelListModelCopyWith<$Res> {
  factory _$LevelListModelCopyWith(_LevelListModel value, $Res Function(_LevelListModel) _then) = __$LevelListModelCopyWithImpl;
@override @useResult
$Res call({
 List<LevelModel> levelList
});




}
/// @nodoc
class __$LevelListModelCopyWithImpl<$Res>
    implements _$LevelListModelCopyWith<$Res> {
  __$LevelListModelCopyWithImpl(this._self, this._then);

  final _LevelListModel _self;
  final $Res Function(_LevelListModel) _then;

/// Create a copy of LevelListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levelList = null,}) {
  return _then(_LevelListModel(
levelList: null == levelList ? _self._levelList : levelList // ignore: cast_nullable_to_non_nullable
as List<LevelModel>,
  ));
}


}

// dart format on
