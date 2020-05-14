import 'package:flutter/material.dart';
import 'package:foodapp/components/meal_item.dart';
import 'package:foodapp/data/dummy_data.dart';
import 'package:foodapp/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  //remove constructor and pass all information with ModalRoute.of(context).settings.arguments as Category;
  // that is new way to send information by router
  //final Category category;
  //const CategoriesMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
