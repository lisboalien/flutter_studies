import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Text('Hello World',
          textDirection: TextDirection.ltr,
          style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
      ),
    );
  }
}
