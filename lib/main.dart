import 'package:flutter/material.dart';
import 'package:search_image_app/data/repositor/photo_api_repositor.dart';
import 'package:search_image_app/data/photo_provider.dart';
import 'package:search_image_app/domain/repository/photo_api_repository.dart';
import 'package:search_image_app/domain/use_case/get_photos_use_case.dart';
import 'package:search_image_app/presentation/home/main_screen.dart';
import 'package:search_image_app/presentation/home/main_view_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: PhotoProvider(
      //   mainViewModel: MainViewModel(repository: PixabayApi()),
      //   child: MainScreen(),
      // ),
      home: ChangeNotifierProvider(
        // FIXME: refactor v3
        // create: (_) => MainViewModel(repository: PixabayApi()),
        create: (_) => MainViewModel(
            getPhotosUseCase: GetPhotosUseCase(repository: PixabayApi())),
        child: MainScreen(),
      ),
    );
  }
}
