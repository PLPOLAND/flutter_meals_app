import 'package:flutter/material.dart';
import 'package:flutter_meals_app/dummy_data.dart';
import 'package:flutter_meals_app/models/category.dart';
import 'package:flutter_meals_app/widgets/meal_item.dart';

import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;

  const CategoryMealsScreen({super.key, required this.availableMeals});

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal> displayedMeals = [];
  Map<String, String>? routeArgs;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_loadedInitData) {
      routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      displayedMeals = widget.availableMeals
          .where(
            (element) => element.categories.contains(routeArgs!['id']),
          )
          .toList();
      _loadedInitData = true;
    }
  }

  // final String categoryID;
  void removeItem(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(routeArgs == null ? "" : routeArgs!['title']!)),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          var meal = displayedMeals[index];
          return Center(
            child: MealItem(
              id: meal.id,
              title: meal.title,
              imageUrl: meal.imageUrl,
              duration: meal.duration,
              complexity: meal.complexity,
              affordability: meal.affordability,
              removeItem: removeItem,
            ),
          );
        }),
        itemCount: displayedMeals.length,
      ),
    );
  }
}
