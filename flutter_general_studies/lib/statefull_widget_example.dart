import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  final Widget textInput;
  MyApp({this.textInput});
  @override
  _MyAppStateState createState() => new _MyAppStateState();
}

class _MyAppStateState extends State<MyApp> {
  bool checkboxValue = false;
  String actionText = "Default";


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello Flutter"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add), onPressed: (){
              setState(() {
                actionText = "New Text";
              });
            }),
            new IconButton(icon: new Icon(Icons.remove), onPressed: (){
              setState(() {
                actionText = "Default Text";
              });
            }),
          ],
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              widget.textInput,
              new Text(actionText),
              new Checkbox(
                  value: checkboxValue,
                  onChanged: (bool newValue) {
                    setState(() {
                      checkboxValue = newValue;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
