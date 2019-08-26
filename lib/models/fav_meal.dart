

class FavMeal {
  String _idMeal, _strMeal, _strInstructions, _strMealThumb;

  FavMeal(this._idMeal, this._strMeal, this._strInstructions, this._strMealThumb);

  FavMeal.map(dynamic obj) {
    this._idMeal = obj['id_meal'];
    this._strMeal = obj['str_meal'];
    this._strInstructions = obj['str_instructions'];
    this._strMealThumb = obj['str_mealthumb'];
  }

  String get idMeal => _idMeal;
  String get strMeal => _strMeal;
  String get strInstructions => _strInstructions;
  String get strMealThumb => _strMealThumb;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map['id_meal'] = _idMeal;
    map['str_meal'] = _strMeal;
    map['str_instructions'] = _strInstructions;
    map['str_mealthumb'] = _strMealThumb;

    return map;
  }

}