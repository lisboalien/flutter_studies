import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Cached Image";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new CachedNetworkImage(
              placeholder: new CircularProgressIndicator(),
              imageUrl:
                  "http://hanedanrpg.com/photos/hanedanrpg/26/128718.jpg"),
        ),
      ),
    );
  }
}
