import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;
import 'package:search_image_app/data/repositor/photo_api_repositor.dart';
import 'package:search_image_app/domain/repository/photo_api_repository.dart';
import 'package:search_image_app/domain/use_case/get_photos_use_case.dart';
import 'package:search_image_app/presentation/home/main_view_model.dart';

//1. Provider 전체
List<SingleChildWidget> globalProviders = [];

//2. 어디에도 의존하지않는 모델
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
];

// 의존하는 모델 (위에꺼 의존)
// 3. 2번에 의존성 있는 객체
List<SingleChildWidget> dependentModels = [
  // <T, P> T -> 의존할 모델, P -> 만들 모델
  ProxyProvider<http.Client, PixabayApi>(
    update: (context, client, pixabayApi) => PixabayApi(client),
  ),
  // ProxyProvider<PixabayApi, PhotoApiRepository>(
  //   update: (context, api, pixabayapi) => PhotoApiRepositor(api),
  // ),
  ProxyProvider<PixabayApi, GetPhotosUseCase>(
    update: (context, api, pixabayapi) => GetPhotosUseCase(repository: api),
  ),
];

// 3번에서 만들어진 ProxyProvider<PixabayApi, GetPhotosUseCase>() 에서 context.read를 가져온다.
// 4. ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MainViewModel>(
    create: (BuildContext context) => MainViewModel(
      getPhotosUseCase: context.read<GetPhotosUseCase>(),
    ),
  ),
];
