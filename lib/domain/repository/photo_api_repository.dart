import 'package:search_image_app/data/data_source/result_freezed.dart';
import 'package:search_image_app/domain/model/photo.dart';

// Domain Layer
abstract class PhotoApiRepository {
  Future<Result<List<Photo>>> fetchImageWithQuery(String query);
}
