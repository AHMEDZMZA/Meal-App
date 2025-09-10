import 'package:flutter/material.dart';
import '../widget/select_category_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(data["name"]),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SelectCategoryItem(),
    );
  }
}
