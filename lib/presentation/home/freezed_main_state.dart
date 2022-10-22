import 'package:search_image_app/domain/model/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_main_state.g.dart';

part 'freezed_main_state.freezed.dart';

// freezed 에서는 기본으로  불변객체, copyWith를 제공한다.
@freezed
class MainStateFreezed with _$MainStateFreezed {
  factory MainStateFreezed(
    List<Photo> photos,
    bool isLoading,
  ) = _MainStateFreezed;

  factory MainStateFreezed.fromJson(Map<String, dynamic> json) =>
      _$MainStateFreezedFromJson(json);
}
