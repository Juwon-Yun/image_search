import 'package:flutter_test/flutter_test.dart';
import 'package:search_image_app/data/photo_api_repositor.dart';

void main() {
  test('Pixabay 응답 데이터를 잘 가져와야 한다.', () async {
    final api = PixabayApi();

    final result = await api.fetchImageWithQuery('iphone');

    expect(result.length, 20);
  }, timeout: const Timeout(Duration(seconds: 10)));
}
