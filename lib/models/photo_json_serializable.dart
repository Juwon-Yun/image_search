import 'package:json_annotation/json_annotation.dart';

part 'photo_json_serializable.g.dart';

@JsonSerializable()
class PhotoWithJsonSerializable {
  int id;
  String tags;

  @JsonKey(name: 'previewUrl')
  String previewUrl;

  PhotoWithJsonSerializable({
    required this.id,
    required this.tags,
    required this.previewUrl,
  });

  factory PhotoWithJsonSerializable.fromJson(Map<String, dynamic> json) =>
      _$PhotoWithJsonSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoWithJsonSerializableToJson(this);
}
