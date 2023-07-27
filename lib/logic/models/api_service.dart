import 'dart:convert';
import 'package:http/http.dart' as http;
import 'article.dart';
import 'articles_list.dart';

class NewsApi {

  final String baseUrl = 'http://newsapi.org/v2';
  final String apiKey = '32e5ac2a1226476abca73b2d7f9188e4';

  Future<List<Article>> fetchArticles({required String country, required String category}) async {

    Uri apiUrl = Uri.parse('$baseUrl/top-headlines?country=$country&category=$category&apiKey=$apiKey' );
    http.Response response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      print('Data get successfully with code ${response.statusCode}');
      var data = jsonDecode(response.body);
      
      List<Article> articleList = Articles.fromJson(data).articles!
        .map((e) => Article.fromJson(e)).toList();
        
      return articleList;
    } 

    else {
      print('statusCose is ${response.statusCode } country=$country&category=$category');
      return [];
    }
  }
}
