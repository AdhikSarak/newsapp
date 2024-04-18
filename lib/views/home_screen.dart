// home_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';
import '../models/article.dart';

class HomeScreen extends StatelessWidget {
  final NewsController newsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News')),
      body: Obx(
        () => newsController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : newsController.errorMessage.value.isEmpty
                ? ListView.builder(
                    itemCount: newsController.articles.length,
                    itemBuilder: (context, index) {
                      Article article = newsController.articles[index];
                      return ListTile(
                        title: Text(article.title),
                        subtitle: Text(article.description),
                        onTap: () {
                          Get.toNamed('/articleDetail', arguments: article);
                        },
                      );
                    },
                  )
                : Center(child: Text(newsController.errorMessage.value)),
      ),
    );
  }
}
