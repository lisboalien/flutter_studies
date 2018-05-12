import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Stack Example",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Stack Example"),
          ),
          body: new Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              new Card(
                child: new Padding(padding: const EdgeInsets.all(200.0),),
                color: Colors.black,
              ),
              new Card(
                child: new Padding(padding: const EdgeInsets.all(100.0),),
                color: Colors.blueGrey,
              ),
            ],
          )
      ),
    );
  }
}
