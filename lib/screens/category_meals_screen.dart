import 'package:flutter/material.dart';
import 'package:flutter_meals_app/dummy_data.dart';
import 'package:flutter_meals_app/models/category.dart';
import 'package:flutter_meals_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  // final String categoryID;
  // final String categoryTitle;

  // const CategoryMealsScreen(
  //     {super.key, required this.categoryID, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryMeals = DUMMY_MEALS
        .where(
          (element) => element.categories.contains(routeArgs['id']),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text(routeArgs['title']!)),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          var meal = categoryMeals[index];
          return Center(
            child: MealItem(
                id: meal.id,
                title: meal.title,
                imageUrl: meal.imageUrl,
                duration: meal.duration,
                complexity: meal.complexity,
                affordability: meal.affordability),
          );
        }),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
