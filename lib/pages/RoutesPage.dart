import 'package:flutter/material.dart';

class Routespage extends StatefulWidget {
  const Routespage({super.key});

  @override
  State<Routespage> createState() => _RoutespageState();
}

class _RoutespageState extends State<Routespage> {

  List texts = [
    ["main (Navigator.push...)", "// No need to add anything"],
    ["main (Navigator.pushNamed...)", "home: HomePage(),\nroutes: {\n   '/newPage' : (context) => newPage(),\n   ...\n}"],
    ["from..to", "Navigator.push(\n   context,\n   MaterialPageRoute(\n      builder: (context) => newPage()\n   )\n);"],
    ["from..to", "Navigator.pushNamed(\n   context, '/newPage'\n);"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routes"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Normal Method ⬇", style: TextStyle(fontWeight: FontWeight.w600),),
              Text("Preferred Method ⬇", style: TextStyle(fontWeight: FontWeight.w600))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Code's below are Selectable..."),
          ),
          Expanded(
            child: GridView.builder(itemCount: 4, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) =>
            // Container(height: 100, width: 180, color: Colors.cyanAccent, margin: EdgeInsets.all(6.0),),
            Card(color: Colors.black87, child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SelectableText("${texts[index][0]}\n\n\n${texts[index][1]}", style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: "Monospace"),),
            ),)
            ),
          )
        ],
      )
    );
  }
}
