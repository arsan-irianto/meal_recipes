import 'package:flutter/material.dart';
import 'package:meal_recipes/detail_meal.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/models/meal_repository.dart';

void main() => runApp(MealApp());

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomeMeal(),
    );
  }
}

class HomeMeal extends StatelessWidget {

  // Build Home with GridView
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Seafood Meals'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(4),
          childAspectRatio: 8/9,
          children: mealCards(context),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  // Load Data Meals to CardView
  List<GestureDetector> mealCards(BuildContext context)  {
    List<Meal> mealsData = MealRepository.loadMeals();

    return mealsData.map((meal) {
      return GestureDetector(
        onTap: () {
          print("Tapped" + meal.strMeal);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => new DetailMeal(meal)
              )
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18/15,
                child: Image.network(meal.strMealThumb, fit: BoxFit.fitWidth),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Text(
                        meal.strMeal,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.body2,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}

