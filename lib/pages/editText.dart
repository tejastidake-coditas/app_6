import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  const EditText({super.key});

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  String _name = "";
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EditText"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("You'r name is: $_name"),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                          hintText: "Enter your first name",
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.account_circle))),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _name = textEditingController.text;
                      });
                    },
                    child: Text("Save"))
              ])
            ],
          ),
        ));
  }
}
