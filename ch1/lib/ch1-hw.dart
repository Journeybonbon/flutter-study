import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var switchValue = false;
  String test = "hello";
  Color _color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
                child: ElevatedButton(
                    child: Text("$test"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(_color)),
                    onPressed: () {
                      if (test == "hello") {
                        setState(() {
                          test = "reset!";
                        });
                      } else {
                        setState(() {
                          test = "hello";
                        });
                      }
                    }))));
  }
}
