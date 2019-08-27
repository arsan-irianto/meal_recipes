import 'package:flutter/material.dart';
import 'package:meal_recipes/views/detail_meal_page.dart';

class MealGridView extends StatefulWidget {
  final List<dynamic> meals;
  final String mealCategory;
  MealGridView(this.meals, this.mealCategory);

  @override
  _MealGridViewState createState() => _MealGridViewState();
}

class _MealGridViewState extends State<MealGridView> {

  List<dynamic> meals;

  @override
  void initState() {
    if (widget.meals != null){
      meals = widget.meals;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      key: Key('gridview_builder'),
      crossAxisCount: 2,
      padding: EdgeInsets.all(4),
      childAspectRatio: 8/9,
      children: List.generate(meals.length, (index){
        return mealCard(context, meals[index], index);
      }),
    );
  }

  GestureDetector mealCard(BuildContext context, dynamic meal, int index) {
    return GestureDetector(
      onLongPress: () {
        final snackBar = SnackBar(
          content: Text("Meal : " + meal.strMeal + " mealCategory : " + widget.mealCategory),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailMealPage(meal, widget.mealCategory)
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