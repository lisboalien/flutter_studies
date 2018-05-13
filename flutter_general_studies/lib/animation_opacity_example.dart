import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Animation Demo";
    return new MaterialApp(
      title: title,
      home: new MainScreen(title: title),
    );
  }
}

class MainScreen extends StatefulWidget {
  final String title;
  MainScreen({Key key, this.title}) : super(key: key);
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new AnimatedOpacity(
          //Container that can be visible and invisible
          opacity: _visible ? 1.0 : 0.0,
          duration: new Duration(milliseconds: 500),
          child: new Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: (){
        setState(() {
          //Changes the state from not visible to visible, vice-versa
          _visible = !_visible;
        });
      },
        tooltip: "Toggle Opacity",
        child: new Icon(Icons.flip),),
    );
  }
}
