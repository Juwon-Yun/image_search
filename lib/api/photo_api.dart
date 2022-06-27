import 'package:search_image_app/constants/api_constant.dart';
import 'package:search_image_app/models/photo.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse(apiURI));
    return Future<List<Photo>>.delayed(Duration(seconds: 2));
  }
}
