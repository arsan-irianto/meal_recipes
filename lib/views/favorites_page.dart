import 'package:flutter/material.dart';
import 'package:meal_recipes/views/fav_dessert_page.dart';
import 'package:meal_recipes/views/fav_seafood_page.dart';
import 'package:meal_recipes/config.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Config.appColor,
          bottom: TabBar(
            tabs: [
              Container(
                child: Tab(text: 'Dessert'),
              ),
              Container(
                child: Tab(text: 'Seafood'),
              ),
            ],
          ),
          title: Text('Favorite Meals'),
        ),
        body: TabBarView(
          children: [
            FavDessertPage(),
            FavSeafoodPage(),
          ],
        ),
      ),
    );
  }
}