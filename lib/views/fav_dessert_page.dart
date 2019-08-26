import 'package:flutter/material.dart';
import 'package:meal_recipes/db/db_helper.dart';
import 'package:meal_recipes/views/meal_gridview.dart';

class FavDessertPage extends StatefulWidget {
  @override
  _FavDessertState createState() => _FavDessertState();
}

class _FavDessertState extends State<FavDessertPage> {

  final db = DBHelper();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: db.getFavoriteMeals("fav_dessert"),
      builder: (context, snapshot) {
        if (snapshot.hasError) throw(snapshot.error);
        return snapshot.hasData
            ? MealGridView(snapshot.data, "fav_dessert")
            : Center(child: CircularProgressIndicator());
      },
    );
  }

}