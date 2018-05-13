import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ToDo {
  final String title;
  final String description;

  ToDo(this.title, this.description);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Passing Data to Details Screen";
    return new MaterialApp(
      title: title,
      home: new ToDoScreen(
          todos: new List.generate(
              100,
                  (i) =>
              new ToDo("Todo $i", "This is the description of Todo$i."))),
    );
  }
}

class ToDoScreen extends StatelessWidget {
  final List<ToDo> todos;

  ToDoScreen({Key key, this.todos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ToDos"),
      ),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return new ListTile(
              title: new Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                        new DetailScreen(todo: todos[index])));
              });
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final ToDo todo;

  DetailScreen({Key key, this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Details of ${todo.title}"),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Center(
          child: new Text("${todo.description}"),
        ),
      ),
    );
  }
}
