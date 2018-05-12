import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Text Field Demo",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Text Field Demo"),
          ),
          body: new TextField(
            autocorrect: true,
            autofocus: true,
            onChanged: (value){
              print(value);
            },
            decoration: new InputDecoration(
              border: InputBorder.none,
              hintText: "Please enter search term here...",
            ),
          )
      ),
    );
  }
}
