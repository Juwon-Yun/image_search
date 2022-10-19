// 봉인 클래스, shield class 라고도 부른다.
// enum 보다 확장의 개념이다.
abstract class Result<T> {
  factory Result.success(T data) = Success;
  factory Result.error(String errorMsg) = Error;
}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final String errorMessage;

  Error(this.errorMessage);
}
