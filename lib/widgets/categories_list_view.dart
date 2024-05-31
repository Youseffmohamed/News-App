import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/entertaiment.jpeg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/health.jpeg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.jpeg',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
