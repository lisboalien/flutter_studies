import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hero Demo",
      home: new MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Main Screen"),
      ),
      body: new GestureDetector(
        child: new Hero(
            tag: 'imageHero',
            child: new Image.network(
                'https://i.pinimg.com/236x/05/0c/7f/050c7f29023728b6d96cdc774878db0b--kawaii-drawings-cute-drawings.jpg')),
        onTap: () {
          Navigator.push(context, new MaterialPageRoute(builder: (_) {
            return new DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        child: new Hero(
            tag: 'imageHero',
            child: new Image.network(
                'https://i.pinimg.com/originals/9d/f3/09/9df309989a0e4e034477092fb5bdab76.jpg')),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
