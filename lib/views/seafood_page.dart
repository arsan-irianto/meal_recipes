import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/models/repository.dart';
import 'package:meal_recipes/views/meal_gridview.dart';
import 'package:meal_recipes/views/search_meal.dart';
import 'package:meal_recipes/config.dart';

class SeafoodPage extends StatelessWidget {
  final seafoodUrl =
      "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Config.appColor,
        title: Text('Seafood Meals'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'Search',
              color: Colors.white,
            ),
            onPressed: () {
              showSearch(context: context, delegate: SearchMeal("fav_seafood"));
            },
          )
        ],
      ),
      body: FutureBuilder<List<Meal>>(
        future: fetchMeals(seafoodUrl),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
                child: ListTile(
              title: Text(
                "No results found",
                style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "Please check your internet connection",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ));
          return snapshot.hasData
              ? MealGridView(snapshot.data, "fav_seafood")
              : Center(child: CircularProgressIndicator());
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
