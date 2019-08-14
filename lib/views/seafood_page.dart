import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/models/repository.dart';
import 'package:meal_recipes/views/meal_gridview.dart';

class SeafoodPage extends StatelessWidget {

  final seafoodUrl = "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seafood Meals'),
      ),
      body: FutureBuilder<List<Meal>>(
        future: fetchMeals(seafoodUrl),
        builder: (context, snapshot) {
          if (snapshot.hasError) throw Exception("Can't get data of Meals");
          return snapshot.hasData
              ? MealGridView(meals: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}