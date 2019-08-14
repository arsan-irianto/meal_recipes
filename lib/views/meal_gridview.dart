import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/views/detail_meal_page.dart';

class MealGridView extends StatelessWidget  {
  final List<Meal> meals;
  MealGridView({Key key, this.meals}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4),
      childAspectRatio: 8/9,
      children: List.generate(meals.length, (index){
        return mealCard(context, meals[index]);
      }),
    );
  }

  GestureDetector mealCard(BuildContext context, Meal meal) {
    return GestureDetector(
      onLongPress: () {
        final snackBar = SnackBar(
          content: Text("Meal : " + meal.strMeal),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailMealPage(meal)
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
              child: Hero(
                  tag: meal.idMeal.toString(),
                  child: Image.network(meal.strMealThumb, fit: BoxFit.fitWidth)
              ),
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
  }
}