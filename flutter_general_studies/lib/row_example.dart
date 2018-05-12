import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Row Demo",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Row Demo"),
          ),
          body: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Text(
                    "text 1",
                    textAlign: TextAlign.center,
                    style: new TextStyle(color: Colors.blue),
                  )),
              new Expanded(child: new Text("text 2")),
              new Expanded(
                  child: new FittedBox(
                    fit: BoxFit.contain,
                    child: const FlutterLogo(),
                  ))
            ],
          )),
    );
  }
}
