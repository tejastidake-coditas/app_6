import 'package:flutter/material.dart';

void main() {
  runApp(StackPage());
}

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Page"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.blue[600],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue[200],
            ),
          ],
        ),
      ),
    );
  }
}
