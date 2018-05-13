import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: "Navigation Basics",
  home: new FirstScreen(),
));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fcTitle = "First Screen Title";
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(fcTitle),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Launch new screen"),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SecondScreen()));
            }),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scTitle = "Second Screen";
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(scTitle),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text("Go Back"),
        ),
      ),
    );
  }
}
