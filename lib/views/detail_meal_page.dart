import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/models/repository.dart';
import 'package:meal_recipes/views/meal_detailview.dart';

class DetailMealPage extends StatelessWidget{
  
  final Meal meal;
  DetailMealPage(this.meal);
  final detailUrl = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.strMeal),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
        ),
        body: FutureBuilder<MealDetails>(
          future: fetchDetailsMeal(detailUrl+this.meal.idMeal),
          builder: (context, snapshot){
            if (snapshot.hasError) throw Exception("Can't get data of Meals");
            return snapshot.hasData
                ? MealDetailView(meal: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        )
    );    
  }
}
