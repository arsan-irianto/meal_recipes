
class Meal {
  final String strMeal;
  final String strMealThumb;
  final String idMeal;

  Meal(this.strMeal,
      this.strMealThumb,
      this.idMeal);

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
        json['strMeal'],
        json['strMealThumb'],
        json['idMeal']
    );
  }
}

class MealDetails {
  final String idMeal;
  final String strMeal;
  final String strInstructions;
  final String strMealThumb;

  MealDetails(this.idMeal, this.strMeal, this.strInstructions, this.strMealThumb);

  factory MealDetails.fromJson(Map<String, dynamic> json) {
    return MealDetails(
      json['idMeal'],
      json['strMeal'],
      json['strInstructions'],
      json['strMealThumb'],
    );
  }
}
