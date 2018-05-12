import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Basic App Bar Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic App Bar Demo"),
        ),
        body: new Center(
          child: new ButtonBar(
            //Buttons in the same line
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new RaisedButton(child: new Text("Hello"), onPressed: (){}),
              new RaisedButton(child: new Text("World"), onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
