import 'package:flutter/material.dart';

class MealDetailScrean extends StatelessWidget {
  static const routeName = "/MealDetail";
  const MealDetailScrean({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text(mealId)),
      body: Container(
        child: Text(mealId),
      ),
    );
  }
}
