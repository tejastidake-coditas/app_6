import 'package:flutter/material.dart';

class WindowSize extends StatefulWidget {
  const WindowSize({super.key});

  @override
  State<WindowSize> createState() => _WindowSizeState();
}

class _WindowSizeState extends State<WindowSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Size"),
        centerTitle: true,
        backgroundColor: MediaQuery.of(context).size.width > 600 ? Colors.blue : Colors.red,
        elevation: 10,
      ),
      body: Center(
        child: Text(
            "w: ${MediaQuery.of(context).size.width} x h: ${MediaQuery.of(context).size.height}"),
      ),
    );
  }
}
