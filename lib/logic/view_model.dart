import 'package:news/models/api_service.dart';
import 'package:news/models/article.dart';

class ArticleListViewModel {
  List<Article>? _article;

  fetchArticle() async {
    _article = await NewsApi().fetchArticles(
      country: 'eg',
      category: 'technology',
    );
  }

  List<Article>? get article => _article ;

}
