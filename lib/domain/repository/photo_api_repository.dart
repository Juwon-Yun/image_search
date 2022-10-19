import 'package:search_image_app/domain/model/photo.dart';

// Domain Layer
abstract class PhotoApiRepository {
  Future<List<Photo>> fetchImageWithQuery(String query);
}
