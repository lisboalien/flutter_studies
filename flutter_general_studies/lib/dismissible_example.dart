import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    new MyApp(items: new List<String>.generate(20, (i) => "Item ${i+1}")));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "Dismissing Item";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return new Dismissible(
                //Takes an item out on moving it to the sides
                key: new Key(item),
                onDismissed: (direction) {
                  //What to do when dismissing an item
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dismissed")));
                },
                background: new Container(
                  //What appears on the background of an item when it is dismissed
                  color: Colors.blueAccent,
                  child: new Center(
                      child: new Text("Delete")
                  ),
                ),
                child: new ListTile(
                  //The actual list
                  title: new Text("$item"),
                  subtitle: new Text("$item at index $index"),
                ),
              );
            }),
      ),
    );
  }
}
