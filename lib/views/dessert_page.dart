import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/views/meal_gridview.dart';
import 'package:meal_recipes/models/repository.dart';


class DessertPage extends StatelessWidget {

  final dessertUrl = "https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Meals'),
      ),
      body: FutureBuilder<List<Meal>>(
        future: fetchMeals(dessertUrl),
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