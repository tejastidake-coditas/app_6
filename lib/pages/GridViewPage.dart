import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView Page : GridView.builder()"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: GridView.builder(
            itemCount: 66,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) => Container(
                color: Colors.cyanAccent,
                margin: EdgeInsets.all(2.0),
                child: Center(
                  child: Text("${index + 1}"),
                ))));
  }
}
