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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
        itemCount: categories.length,
      ),
    );
  }
}

/*
ListView.builder(
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
        itemCount: categories.length,
      ),

GridView.builder(
itemCount: categories.length,  // Counter for the number of items
// ده المسؤول عن تخطيط الشبكة (Layout)، وهنا اخترنا إننا نحدد عدد الأعمدة بشكل ثابت (FixedCrossAxisCount).
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//  يعني الشبكة هتتعرض في عمودين.
crossAxisCount: 2, // Number of columns in the grid
//---------------------------------------------------------------------------------------
ده بيحدد النسبة بين العرض والطول لكل عنصر.
1 = مربع (الطول = العرض).
أكبر من 1 (مثال: 3/2) = العنصر عريض أكتر من طوله.
أصغر من 1 (مثال: 2/3) = العنصر أطول من عرضه.
childAspectRatio: 1, // Width to height ratio of each item
//---------------------------------------------------------------------------------------
mainAxisSpacing: 10, // Spacing between rows
المسافة الرأسية بين الصفوف (المسافة بين العناصر فوق وتحت).
//---------------------------------------------------------------------------------------
المسافة الأفقية بين الأعمدة (المسافة بين العناصر يمين وشمال).
crossAxisSpacing: 10, // Spacing between columns
),
itemBuilder: (context, index) {
return CategoryItem(category: categories[index]);
},
),
 */
