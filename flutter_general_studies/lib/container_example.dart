import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Container Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Container Demo"),
        ),
        body: new Container(
          margin: const EdgeInsets.all(10.0),
          color: const Color(0xFF00FF00),
          width: 200.0,
          height: 200.0,
          child: new Text("My Container", style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
