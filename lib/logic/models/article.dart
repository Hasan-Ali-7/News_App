class Article {
  final String? articleURL;
  final String? image;
  final String? title;
  final String? description;
  final String? auther;
  final String? time;

  Article({
    this.articleURL,
    this.image,
    this.title,
    this.description,
    this.auther,
    this.time,
  });

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
      articleURL: jsonData['url'],
      image: jsonData['urlToImage'],
      title: jsonData['title'],
      description: jsonData['description'],
      auther: jsonData['auther'],
      time: jsonData['publishedAt'],
    );
  }
}
