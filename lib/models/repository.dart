import 'dart:async';
import 'dart:convert';
import 'meal.dart';
import 'package:meal_recipes/models/meal.dart';
import 'package:http/http.dart' as http;

Future<List<Meal>> fetchMeals(url) async {
  List<Meal> meals = [];
  final res = await http.get(url);
  var data = json.decode(res.body);
  var mealsData = data["meals"];
  for (var meal in mealsData) {
    Meal newMeal = Meal(meal['strMeal'], meal['strMealThumb'], meal['idMeal']);
    meals.add(newMeal);
  }
  return meals;
}

Future<MealDetails> fetchDetailsMeal(url) async {
  List<MealDetails> meals = [];
  final res = await http.get(url);
  var data = json.decode(res.body);
  var mealsData = data["meals"];
  for (var meal in mealsData) {
    MealDetails newDetail = MealDetails(meal['idMeal'], meal['strMeal'], meal['strInstructions'], meal['strMealThumb']);
    meals.add(newDetail);
  }

  return meals[0];
}

