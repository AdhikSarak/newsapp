// main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home_screen.dart';
import 'views/article_detail_screen.dart';
import 'controllers/news_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NewsController());
    return GetMaterialApp(
      title: 'Flutter News App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/articleDetail', page: () => ArticleDetailScreen()),
      ],
    );
  }
}
