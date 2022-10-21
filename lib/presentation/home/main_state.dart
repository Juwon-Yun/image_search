import 'package:search_image_app/domain/model/photo.dart';

class MainState {
  List<Photo> photos;
  bool isLoading;

  MainState(this.photos, this.isLoading);
}
