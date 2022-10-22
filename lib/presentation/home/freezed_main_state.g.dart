// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainStateFreezed _$$_MainStateFreezedFromJson(Map<String, dynamic> json) =>
    _$_MainStateFreezed(
      (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_MainStateFreezedToJson(_$_MainStateFreezed instance) =>
    <String, dynamic>{
      'photos': instance.photos,
      'isLoading': instance.isLoading,
    };
