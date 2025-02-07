import 'package:flutter/material.dart';

void main() {
  runApp(GesturePage());
}

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  void clicked(bool singleTap) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: singleTap
            ? Text("You tapped once (Single Click) 1️⃣")
            : Text("You tapped twice (Double Click) 2️⃣")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: GestureDetector(
            onTap: () {
              clicked(true);
            },
            onDoubleTap: () {
              clicked(false);
            },
            child: Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
              child: Center(
                  child: Text(
                'Gesture Detector:\n"Tap or Double Tap"',
              )),
            ),
          ),
        ),
      ),
    );
  }
}
