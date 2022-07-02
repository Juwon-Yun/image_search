// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_json_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoWithJsonSerializable _$PhotoWithJsonSerializableFromJson(
        Map<String, dynamic> json) =>
    PhotoWithJsonSerializable(
      id: json['id'] as int,
      tags: json['tags'] as String,
      previewUrl: json['previewUrl'] as String,
    );

Map<String, dynamic> _$PhotoWithJsonSerializableToJson(
        PhotoWithJsonSerializable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tags': instance.tags,
      'previewUrl': instance.previewUrl,
    };
