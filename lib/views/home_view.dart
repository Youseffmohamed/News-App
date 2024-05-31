import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_tile.dart';

import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';
import 'news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,  نفس وظيفة اللي فوق
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),

        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
