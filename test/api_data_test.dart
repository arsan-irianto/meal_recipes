import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'package:meal_recipes/models/repository.dart';
import 'package:meal_recipes/models/meal.dart';

class MockClient extends Mock implements http.Client {}

void main() {

  final dessertUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert';
  final seafoodUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood';
  final detailMealUrl = 'https://www.themealdb.com/api/json/v1/1/lookup.php?i=52893';
  final searchMeal = "https://www.themealdb.com/api/json/v1/1/search.php?s=";

  String mockResponse(String jsonFileName) => File('test/$jsonFileName.json').readAsStringSync();

  MockClient mockClient;

  setUp((){
    mockClient = MockClient();
  });

  group('Fetching Api', (){

    test('return Future List of Dessert Meals', () async {
      when(mockClient.get(
        argThat(startsWith(dessertUrl),)
      )).thenAnswer(
         (v) async => http.Response(mockResponse("dessert"), 200));
      expect(await fetchMeals(dessertUrl), TypeMatcher<List<Meal>>());
    });

    test('return Future List of Seafood Meals', () async {
      when(mockClient.get(
          argThat(startsWith(dessertUrl),)
      )).thenAnswer(
              (v) async => http.Response(mockResponse("seafood"), 200));
      expect(await fetchMeals(seafoodUrl), TypeMatcher<List<Meal>>());
    });

    test('return Future List of Searching Meals', () async {
      when(mockClient.get(
          argThat(startsWith(dessertUrl),)
      )).thenAnswer(
              (v) async => http.Response(mockResponse("search_salmon"), 200));
      expect(await fetchMeals(searchMeal + "salmon"), TypeMatcher<List<Meal>>());
    });

    test('return Future Meal Details', () async {
      when(mockClient.get(
          argThat(startsWith(detailMealUrl),)
      )).thenAnswer(
          (v) async => http.Response(mockResponse("mealdetail"), 200));
        expect(await fetchDetailsMeal(detailMealUrl), TypeMatcher<MealDetails>());
      });

  });
}