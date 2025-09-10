import 'package:flutter/material.dart';
import '../widget/meals_details_item.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(data['title']),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: MealsDetailsItem(),
    );
  }
}
