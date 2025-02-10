import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Counter App"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Counter App"),
            Text('$count', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),)
            ])),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        setState(() {
          count++;
        });
      }, icon: Icon(Icons.add), tooltip: 'Add 1 to existing count', label: Text('Add')),
    );
  }
}
