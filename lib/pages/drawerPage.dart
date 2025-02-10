import 'package:app_6/pages/GridViewPage.dart';
import 'package:app_6/pages/ListViewPage.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DrawerPage"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        drawer: Drawer(
            backgroundColor: Colors.deepPurple[100],
            child: Column(children: [

              DrawerHeader(child: Icon(Icons.account_circle, size: 60, color: Colors.black87),),
              ListTile(
                title: Text("ListView"),
                leading: Icon(Icons.list),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewPage()));
                },
              ),
              ListTile(
                title: Text("GridView"),
                leading: Icon(Icons.grid_4x4),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewPage()));
                },
              ),
              ListTile(
                title: Text("Routes"),
                leading: Icon(Icons.route_outlined),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/RoutesPage');
                },
              )

            ])),
        body: Card(color: Colors.black87, child: SelectableText(style: TextStyle(color: Colors.white, fontSize: 12), """
        Dart Code:
        
        
        drawer: Drawer(
            backgroundColor: Colors.deepPurple[100],
            child: Column(children: [

              DrawerHeader(child: Icon(Icons.account_circle, size: 60, color: Colors.black87),),
              ListTile(
                title: Text("ListView"),
                leading: Icon(Icons.list),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewPage()));
                },
              ),
              ListTile(
                title: Text("GridView"),
                leading: Icon(Icons.grid_4x4),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewPage()));
                },
              ),
              ListTile(
                title: Text("Routes"),
                leading: Icon(Icons.route_outlined),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/RoutesPage');
                },
              )

            ])),
        """)),
        ),
      );
  }
}
