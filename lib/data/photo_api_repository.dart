import 'package:search_image_app/models/photo.dart';

abstract class PhotoApiRepository {
  Future<List<Photo>> fetchImageWithQuery(String query);
}
