import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // Stateless widget only show static content
  // The checkbox doesn't change here!!
  final Widget textInput;
  MyApp({this.textInput});

  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello flutter"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              textInput,
              new Checkbox(value: checkboxValue, onChanged: (bool value){
                checkboxValue = value;
              }),
            ],
          ),
        ),
      ),
    );
  }
}
