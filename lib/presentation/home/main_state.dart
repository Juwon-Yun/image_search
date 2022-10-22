import 'package:search_image_app/domain/model/photo.dart';

// 프로젝트가 커질 수록 getter와 notifyListeners 을 많이 써야하기 때문에
// 클린 아키텍처를 적용해 State를 다루는 클래스를 하나 만든다.
class MainState {
  final List<Photo> photos;
  final bool isLoading;

  MainState(this.photos, this.isLoading);

  MainState copy({List<Photo>? photos, bool? isLoading}) {
    return MainState(
      photos ??= this.photos,
      isLoading ??= this.isLoading,
    );
  }
}
