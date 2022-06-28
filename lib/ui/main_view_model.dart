import 'dart:async';

import 'package:search_image_app/data/photo_api_repository.dart';
import 'package:search_image_app/models/photo.dart';

// api -> repository로 바뀌면서 관계를 없앴다.
class MainViewModel {
  final PhotoApiRepository repository;

  MainViewModel({required this.repository});

  final _photoScreenController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoScreenController.stream;

  Future<void> fetch(String query) async {
    final result = await repository.fetchImageWithQuery(query);
    _photoScreenController.add(result);
  }
}
