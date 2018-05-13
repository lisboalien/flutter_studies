import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("TabBar Example"),
          bottom: new TabBar(controller: tabController, tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.history),
            ),
            new Tab(
              icon: new Icon(Icons.trending_up),
            ),
          ]),
        ),
        body: new TabBarView(
            controller: tabController,
            children: <Widget>[
              new Center(
                child: new Icon(Icons.home, size: 128.0, color: Colors.blue,),
              ),
              new Center(
                child: new Icon(Icons.history, size: 128.0, color: Colors.blue,),
              ),
              new Center(
                child: new Icon(Icons.trending_up, size: 128.0, color: Colors.blue,),
              ),
            ]),
        bottomNavigationBar: new Material(color: Colors.blueAccent, child: new TabBar(controller: tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.history),),
              new Tab(icon: new Icon(Icons.trending_up),),
            ]),),
      ),
    );
  }
}
