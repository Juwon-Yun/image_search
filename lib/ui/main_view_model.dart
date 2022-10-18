import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:search_image_app/data/photo_api_repository.dart';
import 'package:search_image_app/models/photo.dart';

// api -> repository로 바뀌면서 관계를 없앴다.
class MainViewModel with ChangeNotifier {
  final PhotoApiRepository repository;

  List<Photo> _photos = [];

  // List<Photo> get photos => _photos;

  // UnmodifiableListView 타입을 이용해 구현체에서 clear(), add() 를 막는다.
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  MainViewModel({required this.repository});

  // final _photoScreenController = StreamController<List<Photo>>()..add([]);
  // Stream<List<Photo>> get photoStream => _photoScreenController.stream;

  // Future<void> fetch(String query) async {
  //   final result = await repository.fetchImageWithQuery(query);
  //   _photoScreenController.add(result);
  // }
  Future<void> fetch(String query) async {
    final result = await repository.fetchImageWithQuery(query);
    _photos = result;
    notifyListeners();
  }
}
