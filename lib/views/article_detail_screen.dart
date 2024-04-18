// article_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Article article = ModalRoute.of(context)!.settings.arguments as Article;

    return Scaffold(
      appBar: AppBar(title: Text(article.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            article.imageUrl == null ? Text('Image not Available') : Image.network(article.imageUrl!),
            SizedBox(height: 20),
            Text(article.description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
