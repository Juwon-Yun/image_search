import 'package:flutter/material.dart';
import 'package:search_image_app/data/photo_api.dart';
import 'package:search_image_app/data/photo_provider.dart';
import 'package:search_image_app/ui/main_screen.dart';
import 'package:search_image_app/ui/main_view_model.dart';

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
      home: PhotoProvider(
        mainViewModel: MainViewModel(),
        child: MainScreen(),
      ),
    );
  }
}
