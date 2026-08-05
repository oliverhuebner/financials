// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LevelListModel _$LevelListModelFromJson(Map<String, dynamic> json) =>
    _LevelListModel(
      levelList:
          (json['levelList'] as List<dynamic>?)
              ?.map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LevelListModelToJson(_LevelListModel instance) =>
    <String, dynamic>{'levelList': instance.levelList};
