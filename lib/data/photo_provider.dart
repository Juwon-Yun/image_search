import 'dart:async';

import 'package:flutter/material.dart';
import 'package:search_image_app/data/photo_api.dart';
import 'package:search_image_app/models/photo.dart';

// InheritedWidget 작성법
class PhotoProvider extends InheritedWidget {
  final PixabayApi api;

  // InheritedWidget안에서는 불변객체만 사용할 수 있다.
  // List<Photo> _photos = [];

  // final _photoScreenController = StreamController<List<Photo>>();

  // ..add로 생성하자마자 빈 리스트를 추가한다. void를 반환하는 메서드로 객체의 레퍼런스를 반환할 수 있다.
  final _photoScreenController = StreamController<List<Photo>>()..add([]);

  Stream<List<Photo>> get photoStream => _photoScreenController.stream;

  PhotoProvider({
    Key? key,
    required Widget child,
    required this.api,
  }) : super(key: key, child: child);

  // widget tree에서 PixabayApi 찾아서 반환.
  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'Not PixabayApi found in context');
    return result!;
  }

  Future<void> fetch(String query) async {
    final result = await api.fetchImageWithQuery(query);
    _photoScreenController.add(result);
  }

  // 변경이 되었을 경우 전달을 해야하는데 여기서 그 기준을 정한다.
  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return oldWidget.api != api;
  }
}
