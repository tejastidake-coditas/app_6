import 'package:app_6/pages/GridViewPage.dart';
import 'package:app_6/pages/StackPage.dart';
import 'package:app_6/pages/homePage.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _pages = [homePage(), StackPage(), GridViewPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart), label: 'Stack'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: 'Grid'),
        ],
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
