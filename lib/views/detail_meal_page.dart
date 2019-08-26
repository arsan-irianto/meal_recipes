import 'package:flutter/material.dart';
import 'package:meal_recipes/models/repository.dart';
import 'package:meal_recipes/views/meal_detailview.dart';
import 'package:meal_recipes/db/db_helper.dart';
import 'package:meal_recipes/models/fav_meal.dart';
import 'package:meal_recipes/config.dart';


class DetailMealPage extends StatefulWidget {
  final dynamic meal;
  final String mealCategory;
  DetailMealPage(this.meal, this.mealCategory);

  @override
  DetailMealPageState createState() => DetailMealPageState();
}

class DetailMealPageState extends State<DetailMealPage>{

  dynamic meal;
  bool _isFavorite = false;
  Future<dynamic> sourceData;
  final detailUrl = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=";
  String _mealId, _mealName, _mealInstructions, _mealThumb;

  @override
  void initState() {
    if (widget.meal.idMeal != null) {
      meal = widget.meal;
      checkFavorite(meal.idMeal);
      print(_isFavorite);
      print(meal.idMeal);
    }
    super.initState();
  }

  checkFavorite(String id) async {
    var db = DBHelper();
    int rCount = await db.getFavoriteById(widget.mealCategory, id);
    //(rCount == 1) ? setState(() => _isFavorite = true) : setState(() => _isFavorite = false);
    if(rCount == 1) {
      setState(() {
        _isFavorite = true;
        //sourceData = db.getFavoriteMeal(widget.mealCategory,id);
      });
    } else {
      setState(() {
        _isFavorite = false;
        //sourceData = fetchDetailsMeal(detailUrl+meal.idMeal);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var db = DBHelper();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Config.appColor,
          title: Text(meal.strMeal),
          leading: IconButton(
              tooltip: "Back",
              icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
          actions: <Widget>[
            IconButton(
              tooltip: meal.idMeal,
              icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () => toggleFavorite()
            )
          ],
        ),
        body: FutureBuilder(
          future: _isFavorite ? db.getFavoriteMeal(widget.mealCategory,meal.idMeal) : fetchDetailsMeal(detailUrl+meal.idMeal),
          builder: (context, snapshot){
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
            if (snapshot.hasData) {
              _mealId = snapshot.data.idMeal;
              _mealName = snapshot.data.strMeal;
              _mealInstructions = snapshot.data.strInstructions;
              _mealThumb = snapshot.data.strMealThumb;

            }
            return snapshot.hasData
                ? MealDetailView(meal: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        )
    );    
  }


  void toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        deleteFavorite(widget.mealCategory);
      } else {
        _isFavorite = true;
        addToFavorite(widget.mealCategory);
      }
    });

  }

  Future addToFavorite(String mealCategory) async {
    var db = DBHelper();
    var faveMeal = FavMeal(this._mealId, this._mealName, this._mealInstructions, this._mealThumb);
    await db.saveFavoriteMeal(faveMeal, mealCategory);
    print("saved to success to table $mealCategory");
  }

  void deleteFavorite(String mealCategory) {
    var db = DBHelper();
    var faveMeal = FavMeal(this._mealId, this._mealName, this._mealInstructions, this._mealThumb);
    db.deleteFavoriteMeal(faveMeal, mealCategory);
    print("deleted");
  }

}
