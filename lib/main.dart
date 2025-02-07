import 'package:app_6/pages/RoutesPage.dart';
import 'package:app_6/pages/homePage.dart';
import 'package:flutter/material.dart';

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
      },
    );
  }
}
