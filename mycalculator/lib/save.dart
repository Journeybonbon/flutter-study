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
  String sum = "";

  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  String? _buttonText;
  List _buttonList = ["+", "-", "x", "/"];
  List<DropdownMenuItem<String>> _dropDownMenuItems =
      new List.empty(growable: true);
  @override
  void initState() {
    super.initState();
    for (var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(
        value: item,
        child: Text(item),
      ));
    }
    _buttonText = _dropDownMenuItems[0].value;
  }

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
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: Text("결과 :  $sum",
                    style: TextStyle(fontFamily: "Pacifico", fontSize: 40)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 80),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: value1,
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(fixedSize: Size(240, 90)),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "AC",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          sum = '0';
                        });
                      },
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      style: OutlinedButton.styleFrom(
                        //backgroundColor: Colors.blue
                        fixedSize: Size(110, 90),
                      ),
                      child: Text("/"),
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
