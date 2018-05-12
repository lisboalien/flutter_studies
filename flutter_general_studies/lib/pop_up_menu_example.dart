import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Basic App Bar Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic App Bar Demo"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.directions_bike), onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.directions_car), onPressed: () {}),
            new PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              return [
                new PopupMenuItem<String>(
                  child: new Row(
                    children: <Widget>[
                      new IconButton(
                          icon: new Icon(Icons.directions_transit),
                          onPressed: () {}),
                      new Text("Transit"),
                    ],
                  ),
                ),
                new PopupMenuItem<String>(
                  child: new Row(
                    children: <Widget>[
                      new IconButton(
                          icon: new Icon(Icons.directions_boat),
                          onPressed: () {}),
                      new Text("Boat"),
                    ],
                  ),
                ),
                new PopupMenuItem<String>(
                  child: new Row(
                    children: <Widget>[
                      new IconButton(
                          icon: new Icon(Icons.directions_bus),
                          onPressed: () {}),
                      new Text("Bus"),
                    ],
                  ),
                ),
                new PopupMenuItem<String>(
                  child: new Row(
                    children: <Widget>[
                      new IconButton(
                          icon: new Icon(Icons.directions_railway),
                          onPressed: () {}),
                      new Text("Railway"),
                    ],
                  ),
                ),
              ];
            })
          ],
        ),
      ),
    );
  }
}
