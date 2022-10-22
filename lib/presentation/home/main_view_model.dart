import 'dart:async';

import 'package:flutter/material.dart';
import 'package:search_image_app/domain/repository/photo_api_repository.dart';
import 'package:search_image_app/presentation/home/freezed_main_state.dart';
import 'package:search_image_app/presentation/home/home_ui_event.dart';
import 'package:search_image_app/presentation/home/main_state.dart';

// api -> repository로 바뀌면서 관계를 없앴다.
class MainViewModel with ChangeNotifier {
  final PhotoApiRepository repository;

  // MainState _state = MainState([], false);
  //
  // MainState get state => _state;

  MainStateFreezed _freezedState = MainStateFreezed([], false);

  MainStateFreezed get freezedState => _freezedState;

  // List<Photo> _photos = [];

  // List<Photo> get photos => _photos;

  // UnmodifiableListView 타입을 이용해 구현체에서 clear(), add() 를 막는다.
  // UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  // bool _isLoading = false;
  // bool get isLoading => _isLoading;

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
    // ui 에서도 수정이 되는게 문제다.
    // 잘만들어도 남들이 망칠 수 있음.
    // viewModel은 ui에서 수정이 안되게해야함.
    // state.isLoading = true;

    // 객체 복사 방식으로 재할당을 막는다.
    // _state = state.copy(isLoading: true);

    // freezed 에서는 기본으로 copy 기능을 제공한다.
    _freezedState = freezedState.copyWith(isLoading: true);

    // _isLoading = true;
    notifyListeners();

    final result = await repository.fetchImageWithQuery(query);
    // when 키워드로 휴먼 에러를 방지한다.
    result.when(success: (list) {
      // _photos = list.toList();
      // state.photos = list;
      // _state = state.copy(photos: list);
      _freezedState = freezedState.copyWith(photos: list);

      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
      // Result.error(message);
    });
    // state.isLoading = false;
    // _state = state.copy(isLoading: false);
    _freezedState = freezedState.copyWith(isLoading: false);

    // _isLoading = false;
    notifyListeners();

    // _photos = result;
  }
}
