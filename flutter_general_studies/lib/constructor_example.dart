import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final Widget textInput;
  MyApp({this.textInput});

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
            ],
          ),
        ),
      ),
    );
  }
}
