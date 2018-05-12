import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Basic List";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text("Map"),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text("Photo Album"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("Phone"),
            ),
          ],
        ),
      ),
    );
  }
}

