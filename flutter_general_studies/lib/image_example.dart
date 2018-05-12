import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Image Demo",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Image Demo"),
          ),
          body: new Center(
            child: new FittedBox(
              fit: BoxFit.contain,
              child: new Image.asset("image1.jpg"),
            ),
          )
      ),
    );
  }
}
