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
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Expanded(child: new Text("Text 1")),
            new Expanded(child: new Text("Text 2")),
            new Expanded(child: new Text("Text 3")),
            new Expanded(child: new Text("Text 4")),
            new Expanded(child: new Text("Text 5")),
            new Expanded(child: new FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            )),
          ],
        ),
      ),
    );
  }
}
