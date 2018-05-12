import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "SnackBar Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("SnackBar Demo"),
        ),
        body: new SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  // Widget to show a SnackBar
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        onPressed: () {
          // On press show the SnackBar
          final SnackBar snackBar = new SnackBar(
            content: new Text("Hey there"),
            action: new SnackBarAction(label: "Undo", onPressed: () {}),
          );
          // Show the SnackBar in Scaffold
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Text("Show SnackBar"),
      ),
    );
  }
}
