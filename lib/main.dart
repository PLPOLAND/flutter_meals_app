import 'package:flutter/material.dart';
import 'package:flutter_meals_app/categories_screen.dart';

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
              background: Color(0xFF234533))),
      home: CategoriesScreen(),
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
