import 'package:search_image_app/data/data_source/result_freezed.dart';
import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/domain/repository/photo_api_repository.dart';

// use_case 에서는 viewModel 에서 하는 데이터를 가져오고 가공하는 로직을 담는다.
// viewModel 에서는 하지 않아야 클린 아키텍처.
class GetPhotosUseCase {
  final PhotoApiRepository repository;

  GetPhotosUseCase({required this.repository});

  Future<Result<List<Photo>>> execute(String query) async {
    final result = await repository.fetchImageWithQuery(query);

    return result.when(success: (photos) {
      // 성공했을 때 3개만 보여주는 가정.
      return Result.success(photos.sublist(0, 3));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
