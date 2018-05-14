import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String homeAddress = "";

  @override
  void initState() {
    super.initState();
    homeAddress = "";
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("TextField Example"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Icon(
                Icons.home,
                size: 64.0,
                color: Colors.blue,
              ),
              new TextField(
                onChanged: (String newValue) {
                  setState(() {
                    homeAddress = newValue;
                  });
                },
                decoration: new InputDecoration(
                    hintText: "Enter your home address here...",
                    labelText: "Home Address:"),
              ),
              new Text(homeAddress),
            ],
          ),
        ),
      ),
    );
  }
}
