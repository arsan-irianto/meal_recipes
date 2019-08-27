import 'package:flutter/material.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:meal_recipes/views/meal_gridview.dart';
import 'package:meal_recipes/models/repository.dart';

class SearchMeal extends SearchDelegate<String>{

  final String mealCategory;

  SearchMeal(this.mealCategory);

  final searchMeal = "https://www.themealdb.com/api/json/v1/1/search.php?s=";

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
        primaryColor: theme.primaryColor,
        primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
        primaryColorBrightness: Brightness.light,
        primaryTextTheme: theme.primaryTextTheme,
        textTheme: theme.textTheme.copyWith(
            title: theme.textTheme.title
                .copyWith(color: theme.primaryTextTheme.title.color))
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: "SearchMeal",
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return searchResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return searchResults();
  }

  searchResults() {
    return FutureBuilder<List<Meal>>(
      future: fetchMeals(searchMeal + query),
      builder: (context, snapshot) {
        if (snapshot.hasError) return Center(
            child: ListTile(
              title: Text("No results found",
                style: TextStyle(fontSize: 13.0, color: Colors.grey, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              subtitle: Text("Please check your internet connection",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13.0, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            )
        );
        return snapshot.hasData
            ? MealGridView(snapshot.data, mealCategory)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}
