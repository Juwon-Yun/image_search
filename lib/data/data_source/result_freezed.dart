// 작성한 result.dart의 Freezed 버전.

// flutter pub run build_runner build
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_freezed.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  // factory 생성자 문법
  const factory Result.success(T data) = Success;
  const factory Result.error(String errorMsg) = Error;
}
