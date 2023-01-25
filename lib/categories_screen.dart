import 'package:flutter/material.dart';
import 'package:flutter_meals_app/category_item.dart';

import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals"),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((data) => CategoryItem(title: data.title, color: data.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
