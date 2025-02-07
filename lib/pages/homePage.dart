import 'package:flutter/material.dart';

import 'GridViewPage.dart';

import 'ListViewPage.dart';

void main() {
  runApp(homePage());
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Colors.cyanAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(children: [
                  Text("ListView.builder(): ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListViewPage()));
                      },
                      child: Text("List View")),
                ]),
                Row(children: [
                  Text("GridView.builder(): ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GridViewPage()));
                      },
                      child: Text("Grid View")),
                ]),
              ],
            ),
          )),
    );
  }
}
