import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}