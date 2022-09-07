import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _title = "Kumoh42 Flutter App";
  MaterialColor _backgroundColor = Colors.amber;

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
                padding: EdgeInsets.all(15),
                child: Text("결과 :  $sum"),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: value1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: value2,
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: ElevatedButton(
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Row(
                      children: <Widget>[Text(_buttonText!)],
                    ),
                    onPressed: () {
                      setState(() {
                        var value1Int = double.parse(value1.value.text);
                        var value2Int = double.parse(value2.value.text);
                        var result;
                        if (_buttonText == "+") {
                          result = value1Int + value2Int;
                        } else if (_buttonText == "-") {
                          result = value1Int - value2Int;
                        } else if (_buttonText == "x") {
                          result = value1Int * value2Int;
                        } else if (_buttonText == "/") {
                          result = value1Int / value2Int;
                        }
                        sum = '$result';
                      });
                    },
                  )),
              Padding(
                padding: EdgeInsets.all(15),
                child: DropdownButton(
                  items: _dropDownMenuItems,
                  onChanged: (String? selectedValue) {
                    setState(() {
                      _buttonText = selectedValue;
                    });
                  },
                  value: _buttonText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
