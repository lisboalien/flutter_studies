import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Text Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Text Demo"),
        ),
        body: new Row(
          children: <Widget>[
            new Expanded(
              child: new Text(
                "Hello",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
