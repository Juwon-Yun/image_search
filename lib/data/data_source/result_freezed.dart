// 작성한 result.dart의 Freezed 버전.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_freezed.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.error(String errorMsg) = Error;
}
