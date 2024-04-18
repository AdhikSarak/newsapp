// news_controller.dart

import 'package:get/get.dart';
import '../services/news_service.dart';
import '../models/article.dart';

class NewsController extends GetxController {
  final NewsService _newsService = NewsService();
  var articles = <Article>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }

  void fetchNews() async {
    try {
      isLoading(true);
      print("Ehlodfa");
      final List<Article> fetchedArticles = await _newsService.fetchNews();
      print(fetchedArticles);
      articles.value = fetchedArticles;
    } catch (e) {
      errorMessage('Failed to fetch news: $e');
    } finally {
      isLoading(false);
    }
  }
}
