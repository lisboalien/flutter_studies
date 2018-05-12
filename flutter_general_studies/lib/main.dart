import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Fade In Image";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Stack(
            children: <Widget>[
              new Center(
                child: new CircularProgressIndicator(),
              ),
              new Center(
                  child: new FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          "https://www.google.com.br/images/branding/googlelogo/2x/googlelogo_color_120x44dp.png"))
            ],
          )),
    );
  }
}
