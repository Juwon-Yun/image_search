import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_freezed.freezed.dart';
part 'photo_freezed.g.dart';

@freezed
class PhotoWithFreezed with _$PhotoWithFreezed {
  factory PhotoWithFreezed({
    required int id,
    required String tags,
    @JsonKey(name: 'previewURL') required String previewUrl,
  }) = _PhotoWithFreezed;

  factory PhotoWithFreezed.fromJson(Map<String, dynamic> json) =>
      _$PhotoWithFreezedFromJson(json);
}
