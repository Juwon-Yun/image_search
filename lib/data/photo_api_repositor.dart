import 'dart:convert';

import 'package:search_image_app/data/photo_api_repository.dart';
import 'package:search_image_app/models/photo.dart';
import 'package:http/http.dart' as http;

import '../models/photo_json_serializable.dart';

class PixabayApi implements PhotoApiRepository {
  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '28295875-bec5cbfe0df05eb894ac5b990';
  final apiURI =
      'https://pixabay.com/api/?key=28295875-bec5cbfe0df05eb894ac5b990&q=yellow+flowers&image_type=photo';

  @override
  Future<List<Photo>> fetchImageWithQuery(String query) async {
    final response = await http
        .get(Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }

  Future<List<PhotoWithJsonSerializable>> fetchMokitoHttpTest(String query,
      {http.Client? client}) async {
    client ??= http.Client();

    final response = await client.get(Uri.parse(
        '${PixabayApi.baseUrl}?key=${PixabayApi.key}&q=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => PhotoWithJsonSerializable.fromJson(e)).toList();
  }
}
