// article.dart

class Article {
  final String title;
  final String description;
  final String? imageUrl;

  Article(
      {required this.title, required this.description,  this.imageUrl});

  factory Article.fromJson(Map<dynamic, dynamic> json) {
    return Article(
      title: json['title'] == '' ? "Nothing there" : json['title'],
      description: json['description'] ?? "Nothing there",
      imageUrl: json['urlToImage'],
    );
  }
}
