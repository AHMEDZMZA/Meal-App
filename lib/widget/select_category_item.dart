import 'package:flutter/material.dart';
import 'package:food/my_styles_text.dart';
import '../data.dart';
import '../model/meal.dart';

class SelectCategoryItem extends StatelessWidget {
  const SelectCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    List<Meal> mealsFiltered =
        meals.where((value) {
          return value.categoryNumber == data["id"];
        }).toList();

    // 2- return value.categoryNumber.contains(data["id"]);
    // 3- return value.categoryNumber == id;
    return mealsFiltered.isNotEmpty
        ? ListView.builder(
          itemCount: mealsFiltered.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.teal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      mealsFiltered[index].imageUrl,
                      fit: BoxFit.fill,
                      width: 170,
                      height: 170,
                    ),
                    Text(
                      mealsFiltered[index].title,
                      style: MyStylesText.textStyle18,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          "/meal_details",
                          arguments: {
                            "id": mealsFiltered[index].id,
                            "title": mealsFiltered[index].title,
                            "imageUrl": mealsFiltered[index].imageUrl,
                            "salary": mealsFiltered[index].salary,
                            "time": mealsFiltered[index].time,
                            "description": mealsFiltered[index].description,
                          },
                        );
                      },
                      icon: Icon(Icons.arrow_forward),
                      color: Colors.white,
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
            );
          },
        )
        : Center(
          child: Text("No meals found", style: MyStylesText.textStyle20),
        );
  }
}
