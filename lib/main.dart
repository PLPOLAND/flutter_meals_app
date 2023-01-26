import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/meal_detail_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFfbc02d),
          onPrimary: Color(0xFF000000),
          secondary: Color(0xFFab47bc),
          onSecondary: Color(0xFFFFFFFF),
          background: Color(0xFF234533),
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'RaleWay',
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScrean.routeName: (context) => MealDetailScrean(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Card(
          child: Padding(
        padding: EdgeInsets.all(100),
      )),
    );
  }
}
