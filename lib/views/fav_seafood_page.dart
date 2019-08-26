import 'package:flutter/material.dart';
import 'package:meal_recipes/db/db_helper.dart';
import 'package:meal_recipes/views/meal_gridview.dart';

class FavSeafoodPage extends StatefulWidget {
  @override
  _FavSeafoodState createState() => _FavSeafoodState();
}

class _FavSeafoodState extends State<FavSeafoodPage> {

  final db = DBHelper();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: db.getFavoriteMeals("fav_seafood"),
      builder: (context, snapshot) {
        if (snapshot.hasError) throw(snapshot.error);
        return snapshot.hasData
            ? MealGridView(snapshot.data, "fav_seafood")
            : Center(child: CircularProgressIndicator());
      },
    );
  }

}