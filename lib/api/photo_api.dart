import 'dart:convert';

import 'package:search_image_app/constants/api_constant.dart';
import 'package:search_image_app/models/photo.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=$pixabayServiceKey=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
