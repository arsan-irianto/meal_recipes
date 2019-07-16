import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';

class DetailMeal extends StatelessWidget{
  
  final Meal meal;
  DetailMeal(this.meal);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.strMeal),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 15/10,
                  child: Image.network(meal.strMealThumb, fit: BoxFit.fitWidth),
                ),
                Text(
                  meal.strMeal,
                  style: Theme.of(context).textTheme.title,
                  maxLines: 2,
                ),
                Text(
                  meal.strInstructions,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
        ),
      )
    );
  }
}