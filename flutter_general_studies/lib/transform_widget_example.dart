import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double xDirection = 0.0;
  double yDirection = 0.0;
  double zDirection = 0.0;

  Matrix4 baseTransformation;

  @override
  void initState() {
    super.initState();
    baseTransformation = new Matrix4.identity();
  }

  void handleSelection() {
    baseTransformation.rotateX(xDirection / 180.0);
    baseTransformation.rotateY(yDirection / 180.0);
    baseTransformation.rotateZ(zDirection / 180.0);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Slider Example"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Move Slider to transform the card below"),
              new Padding(padding: const EdgeInsets.all(20.0)),
              new Transform(
                  child: new Card(
                    child: new Padding(padding: const EdgeInsets.all(20.0)),
                    color: Colors.orangeAccent,
                  ),
                  transform: baseTransformation),
              new Slider(
                  value: xDirection,
                  max: 180.0,
                  min: 0.0,
                  onChanged: (double value) {
                    setState(() {
                      xDirection = value;
                      handleSelection();
                    });
                  }),
              new Slider(
                  value: yDirection,
                  max: 180.0,
                  min: 0.0,
                  onChanged: (double value) {
                    setState(() {
                      yDirection = value;
                      handleSelection();
                    });
                  }),
              new Slider(
                  value: zDirection,
                  max: 180.0,
                  min: 0.0,
                  onChanged: (double value) {
                    setState(() {
                      zDirection = value;
                      handleSelection();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
