import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';

class MealDetailView extends StatelessWidget {
  final dynamic meal;
  MealDetailView({Key key, this.meal}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 15/10,
              child: Hero(
                  tag: meal.idMeal.toString(),
                  child: Image.network(meal.strMealThumb, fit: BoxFit.fitWidth)
                  //child: Image.network(meal.strMealThumb, fit: BoxFit.fitWidth)
              ),
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
    );
  }
}
