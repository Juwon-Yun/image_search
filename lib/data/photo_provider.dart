import 'package:flutter/material.dart';
import 'package:search_image_app/data/photo_api.dart';

// InheritedWidget 작성법
class PhotoProvider extends InheritedWidget {
  final PixabayApi api;

  const PhotoProvider({
    Key? key,
    required Widget child,
    required this.api,
  }) : super(key: key, child: child);

  // widget tree에서 PixabayApi 찾아서 반환.
  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'No PixabayApi found in context');
    return result!;
  }

  // 변경이 되었을 경우 전달을 해야하는데 여기서 그 기준을 정한다.
  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return oldWidget.api != api;
  }
}
