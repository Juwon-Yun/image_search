import 'package:flutter/material.dart';
import 'package:search_image_app/data/photo_api_repositor.dart';
import 'package:search_image_app/data/photo_provider.dart';
import 'package:search_image_app/ui/main_screen.dart';
import 'package:search_image_app/ui/main_view_model.dart';
import 'package:provider/provider.dart';

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
      home: Provider(
        create: (_) => MainViewModel(repository: PixabayApi()),
        child: MainScreen(),
      ),
    );
  }
}
