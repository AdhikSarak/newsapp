// news_service.dart
//8bcbf1849f9445dd9e2c0c5b11d77321
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class NewsService {
  Future<List<Article>> fetchNews() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=rain&apiKey=8bcbf1849f9445dd9e2c0c5b11d77321'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['articles'];
      return data.map((jsondata) => Article.fromJson(jsondata)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
