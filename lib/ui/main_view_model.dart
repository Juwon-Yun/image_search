import 'dart:async';

import 'package:search_image_app/data/photo_api.dart';
import 'package:search_image_app/models/photo.dart';

class MainViewModel {
  final PixabayApi api = PixabayApi();

  final _photoScreenController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoScreenController.stream;

  Future<void> fetch(String query) async {
    final result = await api.fetchImageWithQuery(query);
    _photoScreenController.add(result);
  }
}
