import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key, required this.favoriteMeals});

  final List<Meal> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    return favoriteMeals.isNotEmpty
        ? ListView.builder(
            itemBuilder: ((context, index) {
              var meal = favoriteMeals[index];
              return Center(
                child: MealItem(
                  id: meal.id,
                  title: meal.title,
                  imageUrl: meal.imageUrl,
                  duration: meal.duration,
                  complexity: meal.complexity,
                  affordability: meal.affordability,
                  removeItem: () {},
                ),
              );
            }),
            itemCount: favoriteMeals.length,
          )
        : const Center(
            child: Text('No Favorites Yet! Add some!'),
          );
  }
}
