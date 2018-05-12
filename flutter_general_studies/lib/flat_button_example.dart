import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flat Button Demo",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flat Button Demo"),
          ),
          body: new Center(
            child: new FlatButton(
              onPressed: (){
                print("button pressed");
              }, child: new Text("Flatt button!"),
              color: Colors.blueAccent,),
          )),
    );
  }
}
