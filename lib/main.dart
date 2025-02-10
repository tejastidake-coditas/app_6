import 'package:app_6/pages/RoutesPage.dart';
import 'package:app_6/pages/drawerPage.dart';
import 'package:app_6/pages/homePage.dart';
import 'package:app_6/pages/toDoApp.dart';
import 'package:flutter/material.dart';
import 'package:app_6/pages/BottomNavPage.dart';
import 'package:app_6/pages/counterApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {
        '/RoutesPage' : (context) => Routespage(),
        '/drawerPage' : (context) => DrawerPage(),
        '/bottomNav' : (context) => BottomNavPage(),
        '/counterApp' : (context) => CounterApp(),
        '/toDoApp' : (context) => ToDoApp()
      },
    );
  }
}
