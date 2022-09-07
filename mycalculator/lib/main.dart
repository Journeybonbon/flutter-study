import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _title = "Kumoh42 Flutter App";
  MaterialColor _backgroundColor = Colors.purple;

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
  String result = "0.0";
  String value = "0";
  String state = "";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Calculater"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Text("결과 :  $result", style: TextStyle(fontSize: 35)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 40),
                child: Text("$value", style: TextStyle(fontSize: 20)),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          result = "0.0";
                          value = "0";
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(270, 70),
                      ),
                      child: Text("AC"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          state = "/";
                          if (value != "0") {
                            var value1 = double.parse(result);
                            var value2 = double.parse(value);
                            if (value2 == 0) {
                              result = "0";
                            }
                            var div = value1 / value2;
                            result = "$div";
                            value = "0";
                          }
                        }); //Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("/"),
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "7";
                          } else {
                            value = "7";
                          }
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("7"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "8";
                          } else {
                            value = "8";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("8"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "9";
                          } else {
                            value = "9";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("9"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          state = "*";
                          if (value != "0") {
                            var value1 = double.parse(result);
                            var value2 = double.parse(value);
                            var multi = value1 * value2;
                            result = "$multi";
                            value = "0";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("x"),
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "4";
                          } else {
                            value = "4";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("4"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "5";
                          } else {
                            value = "5";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("5"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "6";
                          } else {
                            value = "6";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("6"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          state = "+";
                          if (value != "0") {
                            var value1 = double.parse(result);
                            var value2 = double.parse(value);
                            var sum = value1 + value2;
                            result = "$sum";
                            value = "0";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("+"),
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "1";
                          } else {
                            value = "1";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("1"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "2";
                          } else {
                            value = "2";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("2"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "3";
                          } else {
                            value = "3";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("3"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          state = "-";
                          if (value != "0") {
                            var value1 = double.parse(result);
                            var value2 = double.parse(value);
                            var sel = value1 - value2;
                            result = "$sel";
                            value = "0";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("-"),
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (value != "0") {
                            value += "0";
                          } else {
                            value = "0";
                          }
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(270, 70),
                      ),
                      child: Text("0"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          var value1 = double.parse(result);
                          var value2 = double.parse(value);
                          var r;
                          if (state == "+") {
                            r = value1 + value2;
                          } else if (state == "-") {
                            r = value1 - value2;
                          } else if (state == "*") {
                            r = value1 * value2;
                          } else if (state == "/") {
                            if (value2 == 0) {
                              r = "0";
                            } else {
                              r = value1 / value2;
                            }
                          }
                          result = "$r";
                          value = "0";
                          state = "";
                        }); // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        fixedSize: Size(90, 70),
                      ),
                      child: Text("="),
                    )
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
