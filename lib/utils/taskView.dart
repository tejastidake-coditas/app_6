import 'package:app_6/pages/toDoApp.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  final bool completed;
  final String task;
  TaskView(this.completed, this.task, {super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Checkbox(
                value: widget.completed, onChanged: (bool? value) {  },),
            Expanded(child: Text(widget.task))
          ],
        ),
      ),
    );
  }
}
