import 'package:flutter/material.dart';
import 'package:food/screens/home_screen.dart';
import 'package:food/screens/meal_details.dart';
import 'package:food/screens/meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "/meals": (context) => MealsScreen(),
        "/meal_details": (context) => MealDetails(),
      },
      // home : const HomeScreen(),
    );
  }
}
