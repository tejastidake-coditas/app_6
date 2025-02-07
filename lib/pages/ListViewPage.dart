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
                title: Text(
                    "${index + 1}. ${name[index]}         |         empId: 5${index + 682}"),
              )),
    );
  }
}
