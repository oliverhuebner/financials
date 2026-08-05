// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LevelModel _$LevelModelFromJson(Map<String, dynamic> json) => _LevelModel(
  levelId: json['level_id'] as String,
  description: json['description'] as String,
  pages:
      (json['pages'] as List<dynamic>?)
          ?.map((e) => PageModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$LevelModelToJson(_LevelModel instance) =>
    <String, dynamic>{
      'level_id': instance.levelId,
      'description': instance.description,
      'pages': instance.pages,
    };
