import 'package:flutter_test/flutter_test.dart';
import 'package:search_image_app/data/photo_api.dart';
import 'package:search_image_app/ui/main_view_model.dart';

void main() {
  test('Stream이 잘 작동해야 한다', () async {
    final viewModel = MainViewModel(api: PixabayApi());
  }, timeout: const Timeout(Duration(seconds: 10)));
}
