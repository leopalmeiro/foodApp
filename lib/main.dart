import 'package:flutter/material.dart';
import 'package:foodapp/data/dummy_data.dart';
import 'package:foodapp/models/meal.dart';
import 'package:foodapp/screens/categories_meals_screen.dart';
import 'package:foodapp/screens/categories_screen.dart';
import 'package:foodapp/screens/meal_detail_screen.dart';
import 'package:foodapp/screens/settings_screen.dart';
import 'package:foodapp/screens/tabs_screen.dart';
import 'package:foodapp/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals = DUMMY_MEALS;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      //home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (ctx) => TabScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
