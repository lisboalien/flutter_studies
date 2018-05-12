import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Raised Button Demo",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Raised Button Demo"),
          ),
          body: new Center(
            child: new RaisedButton(
              onPressed: () {
                print("button pressed");
              },
              child: new Text("Raised button!"),
              color: Colors.red,
            ),
          )),
    );
  }
}
