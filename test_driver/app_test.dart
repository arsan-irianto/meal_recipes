import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Meal Recipes App',(){

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    // Show Bottom Navigation Dessert displayed and check all data with Srolling gridView
    test('Meal Bottom Navigation Dessert', () async {
      await driver.waitFor(find.text("Dessert"));
      await driver.tap(find.text("Dessert"));
      await driver.waitFor(find.byValueKey("gridview_builder"), timeout: Duration(seconds: 5));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, 0, Duration(seconds: 3));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, -2000, Duration(seconds: 3));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, -4000, Duration(seconds: 3));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, 2000, Duration(seconds: 3));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, 3000, Duration(seconds: 3));
    });

    // Show Bottom Navigation Dessert displayed and check all data with Srolling gridView
    test('Meal Bottom Navigation Seafood', () async {
      await driver.waitFor(find.text("Seafood"));
      await driver.tap(find.text("Seafood"));
      await driver.waitFor(find.byValueKey("gridview_builder"), timeout: Duration(seconds: 5));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, 0, Duration(seconds: 3));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, -2000, Duration(seconds: 3));
      await driver.scroll(find.byValueKey("gridview_builder"), 0, 2000, Duration(seconds: 3));
    });

    test('Meal Bottom Navigation Favorites', () async {
      await driver.waitFor(find.text("Favorites") );
      await driver.tap(find.text("Favorites"));
    });


    // Get Detail Dessert after tap one Dessert Card set Favorite and Back to Dessert Page
/*    test('Navigate To Detail Dessert Page', () async {
      await driver.waitFor(find.text("Apple & Blackberry Crumble"));
      await driver.tap(find.text("Apple & Blackberry Crumble"));
      await driver.waitFor(find.byTooltip("52893"));
      await driver.tap(find.byTooltip("52893"));
      await driver.waitFor(find.byTooltip("Back"));
      await driver.tap(find.byTooltip("Back"));
      await driver.waitFor(find.byTooltip("Search Dessert") );
      await driver.tap(find.byTooltip("Search Dessert"));
      await driver.waitFor(find.byTooltip("SearchMeal") );
      await driver.tap(find.byTooltip("SearchMeal"));
      await driver.enterText("apple");
      await driver.waitForAbsent(find.text("Apple & Blackberry Crumble"));
    });*/

    // Show Dessert Page and Search Dessert
/*    test('Navigate to Search Dessert Page', () async {
      await driver.waitFor(find.text("Dessert") );
      await driver.tap(find.text("Search"));
    });*/

    // Show Bottom Navigation Seafood displayed and clicked
/*    test('Meal Bottom Navigation Seafood', () async {
      await driver.waitFor(find.text("Seafood"));
      await driver.tap(find.text("Seafood"));
    });*/

    // Show Bottom Navigation Favorites displayed and clicked
/*    test('Meal Bottom Navigation Favorites', () async {
      await driver.waitFor(find.text("Favorites") );
      await driver.tap(find.text("Favorites"));
    });*/

  });
}