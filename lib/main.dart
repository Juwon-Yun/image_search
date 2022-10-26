import 'package:flutter/material.dart';
import 'package:search_image_app/di/provider_setup.dart';
import 'package:search_image_app/presentation/home/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  // FIXME: refactor v5
  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MainApp(),
    ),
  );

  // runApp(
  //   const MainApp(),
  // );
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

      // FIXME: refactor v5
      // 여기서 의존성 주입하는 로직을 별도로 작성하는게 좀 더 좋다.
      // 확장성을 고려하자
      home: const MainScreen(),

      // home: ChangeNotifierProvider(
      //   // FIXME: refactor v3
      //   // create: (_) => MainViewModel(repository: PixabayApi()),
      //
      //   // FIXME: refactor v4
      //   create: (_) => MainViewModel(
      //     getPhotosUseCase: GetPhotosUseCase(repository: PixabayApi()),
      //   ),
      //   child: MainScreen(),
      // ),
    );
  }
}
