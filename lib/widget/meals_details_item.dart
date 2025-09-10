import 'package:flutter/material.dart';
import '../data.dart';
import '../model/meal.dart';

class MealsDetailsItem extends StatelessWidget {
  const MealsDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    Meal mealsSelected = meals.firstWhere((value) {
      return value.id == data['id'];
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          mealsSelected.imageUrl,
          fit: BoxFit.fill,
          width: double.infinity,
          height: 250,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(mealsSelected.title, style: TextStyle(fontSize: 25)),
              Text(
                "Salary: ${mealsSelected.salary} \$",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Time: ${mealsSelected.time} min ",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
          child: Text(
            mealsSelected.description,
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal,
            ),
            child: Text(
              "Back",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}