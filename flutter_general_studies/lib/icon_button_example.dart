import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Floating Button Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Floating Button Demo"),
        ),
        body: new Center(
          child: new Text("Some Text"),
        ),
        floatingActionButton: new IconButton(icon: new Icon(Icons.volume_mute), tooltip: "Mute",onPressed: (){
          print("Button pressed");
        }),
      ),
    );
  }
}
