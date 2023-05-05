import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsApi {
  static String url = 'http://newsapi.org/v2';
  static String apiKey = '32e5ac2a1226476abca73b2d7f9188e4';
  static Future<Map<String, dynamic>> getData(
      {required String country, required String category}) async {
    Uri apiUrl = Uri.parse(
        '$url/top-headlines?country=$country&category=$category&apiKey=$apiKey');
    http.Response response = await http.get(apiUrl);
    return jsonDecode(response.body);
  }
}
