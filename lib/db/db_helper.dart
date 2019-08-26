import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:meal_recipes/models/fav_meal.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper.internal();

  DBHelper.internal();

  factory DBHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;

    _db = await setDB();

    return _db;
  }

  setDB() async {
    // use internal storage;
    io.Directory directory = await getApplicationDocumentsDirectory();

    // use external storage
    //io.Directory directory = await getExternalStorageDirectory();
    String path = join(directory.path, "mealsdb");
    var dB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return dB;
  }

  void _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE fav_dessert("
        " id_meal TEXT PRIMARY KEY, "
        " str_meal TEXT, "
        " str_instructions TEXT, "
        " str_mealthumb TEXT)");
    print("DB table fav_dessert created");

    await db.execute("CREATE TABLE fav_seafood("
        " id_meal TEXT PRIMARY KEY, "
        " str_meal TEXT, "
        " str_instructions TEXT, "
        " str_mealthumb TEXT)");
    print("DB table fav_dessert created");
  }

  Future<int> saveFavoriteMeal(FavMeal meal, String mealCategory) async {
    var dbClient = await db;
    int res = await dbClient.insert(mealCategory, meal.toMap());
    print("Data inserted to table fav_dessert");
    return res;
  }

  Future<List<FavMeal>> getFavoriteMeals(String mealCategory) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery("SELECT * FROM $mealCategory ORDER BY id_meal DESC;");
    List<FavMeal> favMealData = new List();
    for(int i=0; i<list.length; i++){
      var favMeal = FavMeal(
        list[i]['id_meal'],
        list[i]['str_meal'],
        list[i]['str_instructions'],
        list[i]['str_mealthumb'],
      );
      favMealData.add(favMeal);
    }
    return favMealData;
  }

  Future<int> getFavoriteById(String mealCategory, String idMeal) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery("SELECT * FROM $mealCategory WHERE id_meal = ?", [idMeal]);
    List<FavMeal> listData = new List();
    var favMeal = FavMeal(
      list[0]['id_meal'],
      list[0]['str_meal'],
      list[0]['str_instructions'],
      list[0]['str_mealthumb'],
    );
    listData.add(favMeal);
    return listData.length;
  }


  Future<dynamic> getFavoriteMeal(String mealCategory, String idMeal) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery("SELECT * FROM $mealCategory WHERE id_meal = ?", [idMeal]);
    List<FavMeal> listData = new List();
    var favMeal = FavMeal(
      list[0]['id_meal'],
      list[0]['str_meal'],
      list[0]['str_instructions'],
      list[0]['str_mealthumb'],
    );
    listData.add(favMeal);
    return listData[0];
  }

  Future<int> deleteFavoriteMeal(FavMeal meal, String mealCategory) async {
    var dbClient = await db;
    int res = await dbClient.rawDelete("DELETE FROM $mealCategory WHERE id_meal = ? ", [meal.idMeal]);
    return res;
  }
}
