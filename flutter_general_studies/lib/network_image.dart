import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final appTitle = 'Web Images';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(appTitle),
        ),
        body: new Center(
          child: new Image.network(
              "https://www.google.com.br/images/branding/googlelogo/2x/googlelogo_color_120x44dp.png"),
        ),
      ),
    );
  }
}
