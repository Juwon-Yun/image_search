import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:search_image_app/domain/repository/photo_api_repository.dart';
import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/presentation/home/home_ui_event.dart';
import 'package:search_image_app/presentation/home/main_state.dart';

// api -> repository로 바뀌면서 관계를 없앴다.
class MainViewModel with ChangeNotifier {
  final PhotoApiRepository repository;

  MainState _state = MainState([], false);

  MainState get state => _state;

  List<Photo> _photos = [];

  // List<Photo> get photos => _photos;

  // UnmodifiableListView 타입을 이용해 구현체에서 clear(), add() 를 막는다.
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  // HomeUiEvent 를 처리하는 stream 컨트롤러 생성
  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  MainViewModel({required this.repository});

  // final _photoScreenController = StreamController<List<Photo>>()..add([]);
  // Stream<List<Photo>> get photoStream => _photoScreenController.stream;

  // Future<void> fetch(String query) async {
  //   final result = await repository.fetchImageWithQuery(query);
  //   _photoScreenController.add(result);
  // }
  Future<void> fetch(String query) async {
    _isLoading = true;
    notifyListeners();

    final result = await repository.fetchImageWithQuery(query);
    // when 키워드로 휴먼 에러를 방지한다.
    result.when(success: (list) {
      _photos = list.toList();
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
      // Result.error(message);
    });
    _isLoading = false;
    notifyListeners();

    // _photos = result;
  }
}
