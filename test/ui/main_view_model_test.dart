import 'package:flutter_test/flutter_test.dart';
import 'package:search_image_app/data/data_source/result_freezed.dart';
import 'package:search_image_app/domain/repository/photo_api_repository.dart';
import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/presentation/home/main_view_model.dart';

// test는 test할 객체가 어떠한 의존하는 객체에 의해서 결과값이 변경되는 경우의 수를 두면 안된다.
// 그래서 기존 PixabayApi 인스턴스를 바로 받던 것을 추상화해 interface를 받는다.

// flutter test -commend line
void main() {
  test('Stream이 잘 작동해야 한다', () async {
    // given
    final viewModel = MainViewModel(repository: FakePhotoApiRepository());

    // when
    await viewModel.fetch('apple');
    // await viewModel.fetch('iphone');

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    // dart에서 문법 제약사항 특성상 clear() 메소드를 없애진 못하고 Error를 던진다.
    //  This operation is not supported by an unmodifiable list. */
    //   void clear() {
    //     throw new UnsupportedError("Cannot clear an unmodifiable list");
    //   }
    // viewModel.photos.clear();

    // then
    expect(
      // viewModel.state.photos,
      viewModel.freezedState.photos,
      // emitsInOrder([
      //   // isA<List<Photo>>(),
      //   equals([]),g
      //   equals(result),
      //   equals(result),
      // ]),
      result,
    );
  }, timeout: const Timeout(Duration(seconds: 10)));
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<Result<List<Photo>>> fetchImageWithQuery(String query) async {
    Future.delayed(const Duration(seconds: 1));

    return Result.success(fakeJson.map((e) => Photo.fromJson(e)).toList());
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 2295434,
    "pageURL":
        "https://pixabay.com/photos/spring-bird-bird-tit-spring-blue-2295434/",
    "type": "photo",
    "tags": "spring bird, bird, tit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gcaa00e4f714e590bc2f798701bc23001fae2c1cd99fe056f5648ad2e8ea37c7abc16091429857c6f7d2bb65d32342431948458a6b065d7bcf2fe07023850c3ac_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g4eceeaa9e0b9822d81611ace7bd09b4b42cf267f12371c3c9afd2be89b51817c41f15e80ace87dd50d16547cc6c777c5cf0e5f9fed02e78a5fac281a0b5eb8a3_1280.jpg",
    "imageWidth": 5363,
    "imageHeight": 3575,
    "imageSize": 2938651,
    "views": 497190,
    "downloads": 269020,
    "collections": 1922,
    "likes": 1857,
    "comments": 223,
    "user_id": 334088,
    "user": "JillWellington",
    "userImageURL":
        "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"
  },
  {
    "id": 3063284,
    "pageURL":
        "https://pixabay.com/photos/rose-flower-petal-floral-noble-3063284/",
    "type": "photo",
    "tags": "rose, flower, petal",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gecd5c8429b8951f5e4f337ace20bd1be46628a999e403fcab32e9111f85874695313dd8be8588d9561577270f81a673b46c2774f430cc14187ee7a3b2f706c97_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g3add7744f5fbbda502d6837117f7f32fe0294a9f3ab36a63ae4e97b655ba718b5f8edc4ad56b644f5fcc35703dd3a3a02bb14ea06d47729978a6ae13fb2bf978_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3574625,
    "views": 969039,
    "downloads": 626934,
    "collections": 1313,
    "likes": 1457,
    "comments": 317,
    "user_id": 1564471,
    "user": "anncapictures",
    "userImageURL":
        "https://cdn.pixabay.com/user/2015/11/27/06-58-54-609_250x250.jpg"
  },
];
