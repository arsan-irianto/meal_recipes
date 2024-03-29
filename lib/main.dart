import 'package:flutter/material.dart';
import 'package:meal_recipes/views/seafood_page.dart';
import 'package:meal_recipes/views/dessert_page.dart';
import 'package:meal_recipes/views/favorites_page.dart';
import 'config.dart';

void main() => runApp(MealApp());

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MealBottomNav(),
    );
  }
}

class MealBottomNav extends StatefulWidget {
  MealBottomNav({ Key key }) : super(key : key);

  @override
  MealBottomNavState createState() => MealBottomNavState();
}

class MealBottomNavState extends State<MealBottomNav> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget> [
    DessertPage(),
    SeafoodPage(),
    FavoritesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
            title: Text('Dessert')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Seafood')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites')
          )
        ],
        currentIndex: _selectedIndex,
        //fixedColor: Colors.amber[900],
        fixedColor: Config.appColor,
        onTap: _onItemTapped,
      ),
    );
  }

}