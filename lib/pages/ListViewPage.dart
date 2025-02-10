import 'dart:math';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List name = [
    "tejas",
    "amey",
    "harish",
    "sagar",
    "ramesh",
    "nilesh",
    "ojash",
    "babu",
    "ansh",
    "Piyush",
    "Bidhe",
    "abhigyan",
    "Rahul",
    "vandith",
    "aushitosh",
    "mangesh",
    "Raju",
    "Anupam",
    "Tarak",
    "Iyer",
    "Jetha",
    "Ajeet"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ListView : ListView.builder()"),
          backgroundColor: Colors.cyan,
          centerTitle: true),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) => ListTile(
                title: Card( child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "${index + 1}. ${name[index]}         |         empId: 5${index + 682}"),
                      GestureDetector(
                          onTap: () {
                            Random random = Random();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(behavior: SnackBarBehavior.floating, content: Text("${name[index]} is on call with ${name[random.nextInt(21)+1]}. Try after some time")));
                          },
                          child: Icon(Icons.phone)
                      ),
                    ],
                  ),
                ),

              ))),
    );
  }
}
