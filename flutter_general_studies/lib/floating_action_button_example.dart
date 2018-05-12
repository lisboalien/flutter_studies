import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Floating Button Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Floating Button Demo"),
        ),
        body: new Center(
            child: new Text("Some text")
        ),
        floatingActionButton: new FloatingActionButton(
            child: new Icon(Icons.home), onPressed: () {}),
      ),
    );
  }
}
