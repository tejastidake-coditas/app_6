
import 'dart:math';

import 'package:app_6/utils/taskView.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();

}

class _ToDoAppState extends State<ToDoApp> {
  final tasks = [];

  TextEditingController textEditingController = TextEditingController();

  void checkBoxChanged(bool value, int index){
    setState(() {
      tasks[index][0] = !tasks[index][0];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        elevation: 10,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => ListTile(
                onTap: (){
                  checkBoxChanged(tasks[index][0], index);
                },
                    title: TaskView(tasks[index][0], tasks[index][1]),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 14.0, left: 14, right: 154),
          child: TextField(controller: textEditingController, decoration: InputDecoration(hintText: "Add Task", hintStyle: TextStyle(color: Colors.black54), border: OutlineInputBorder()),),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            textEditingController.text.isNotEmpty? tasks.add([Random().nextBool(), textEditingController.text]) : ScaffoldMessenger.of(context).showSnackBar(SnackBar(behavior: SnackBarBehavior.floating, content: Text("Task can't be empty")));
            textEditingController.clear();
          });
        },
        label: Text("Add Task"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
