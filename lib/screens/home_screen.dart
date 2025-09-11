import 'package:flutter/material.dart';
import '../data.dart';
import '../widget/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Meal App"),
        backgroundColor: Colors.teal,
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return CategoryItem(category: categories[index]);
      //   },
      //   itemCount: categories.length,
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
        itemCount: categories.length,
      ),
    );
  }
}