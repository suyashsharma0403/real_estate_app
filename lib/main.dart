import 'package:app_final/screens/house_list_screen.dart';
import 'package:flutter/material.dart';
import 'screens/info_screen.dart';
//import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  final List<Widget> _screens = [
    HouseList(),
    InfoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info),
                  label: ''
              )
            ],
            selectedItemColor: Color(0xFF000000)
        ),
      ),
    );
  }
}