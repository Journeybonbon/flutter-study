import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _title = "Kumoh42 Flutter App";
  MaterialColor _backgroundColor = Colors.red;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: _backgroundColor,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MaterialFlutterApp();
  }
}

class _MaterialFlutterApp extends State<MaterialFlutterApp> {
  Widget build(BuildContext context) {
    var buttonWidth = MediaQuery.of(context).size.width;
    var buttonHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("image widget"),
        ),
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  fixedSize: Size(buttonWidth, buttonHeight / 4),
                ),
                child: Text("TEXT BUTTON"),
              ),
              OutlinedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  fixedSize: Size(buttonWidth, buttonHeight / 4),
                ),
                child: Text("OUTLINED BUTTON"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  //backgroundColor: Colors.amber,
                  fixedSize: Size(200, 10),
                ),
                child: Text('ElevatedButton BUTTON'),
              )
            ]))));
  }
}
