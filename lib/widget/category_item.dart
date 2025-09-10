import 'package:flutter/material.dart';
import '../model/category.dart';
import '../my_styles_text.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/meals',
              arguments: {'name': category.name, 'id': category.id},
            );
          },
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              color: Colors.black45,
              child: Text(category.name, style: MyStylesText.textStyle30),
            ),
          ),
        ),
      ),
    );
  }
}
