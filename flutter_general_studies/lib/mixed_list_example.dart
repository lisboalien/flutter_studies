import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class ListItem{
  //Creates a concept of an abstract ListItem
}

class HeadingItem implements ListItem{
  //Creates a HeadingItem from ListItem
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem{
  //Creates a MessageItem from ListItem
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

void main() => runApp(new MyApp(
  //Generates the ListItems for each HeadingItem there are another 5 MessageItems
  items: new List<ListItem>.generate(100,
          (i) => i%6 == 0 ? new HeadingItem("Heading $i") : new MessageItem("Sender $i", "Message body $i")),
));

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  MyApp({Key key, @required this.items}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final title = "Mixed List";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            //The item builder sees for each item which type the item is and mounts them in each style
            final item = items[index];
            if(item is HeadingItem){
              return new ListTile(
                title: new Text(item.heading, style: Theme.of(context).textTheme.headline,),
              );
            } else if(item is MessageItem){
              return new ListTile(
                title: new Text(item.sender),
                subtitle: new Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}
