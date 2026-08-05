// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageModel _$PageModelFromJson(Map<String, dynamic> json) => _PageModel(
  text: json['text'] as String,
  pageNumber: (json['page_number'] as num).toInt(),
);

Map<String, dynamic> _$PageModelToJson(_PageModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'page_number': instance.pageNumber,
    };
