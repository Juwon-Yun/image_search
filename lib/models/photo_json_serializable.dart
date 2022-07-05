import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_json_serializable.g.dart';

// Equatable을 상속받으면 불변객체 ( const 객체가 된다 )
@JsonSerializable()
class PhotoWithJsonSerializable extends Equatable {
  final int id;
  final String tags;

  @JsonKey(name: 'previewUrl')
  final String previewUrl;

  PhotoWithJsonSerializable({
    required this.id,
    required this.tags,
    required this.previewUrl,
  });

  factory PhotoWithJsonSerializable.fromJson(Map<String, dynamic> json) =>
      _$PhotoWithJsonSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoWithJsonSerializableToJson(this);

  // Equatable 패키지로 equals and heshcode를 설정해 줄 수 있다.
  @override
  List<Object?> get props => [id, tags];
}
