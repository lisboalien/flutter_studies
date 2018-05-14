import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color textColor;
  bool checkBoxValue;

  @override
  void initState() {
    super.initState();
    textColor = Colors.red;
    checkBoxValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Checkbox Example"),
        ),
        body: new Center(
            child: new Column(
              children: <Widget>[
                new Text("Some term and conditions that you may not wanna read and agree to in order to move to the next step" +
                    "Some term and conditions that you may not wanna read and agree to in order to move to the next step" +
                    "Some term and conditions that you may not wanna read and agree to in order to move to the next step"),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        "Agree to our terms?",
                        style: new TextStyle(color: textColor),
                      ),
                    ),
                    new Checkbox(
                        value: checkBoxValue,
                        onChanged: (bool checked) {
                          setState(() {
                            checkBoxValue = checked;
                            if(checked == true){
                              textColor = Colors.green;
                            } else {
                              textColor = Colors.red;
                            }
                          });
                        }
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
