import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "InkWell Demo";
    return new MaterialApp(
      title: title,
      home: new MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      // InkWell provide all the widgets to recognize gestures
      onTap: () {
        Scaffold
            .of(context)
            .showSnackBar(new SnackBar(content: new Text("Tapped")));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text("Flat Button"),
      ),
    );
  }
}
