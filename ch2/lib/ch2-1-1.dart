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
    return Scaffold(
        appBar: AppBar(
          title: Text("image widget"),
        ),
        body: Container(
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset("image/photo.png",
                    width: 150, height: 200, fit: BoxFit.fill),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "이름 : 이지현,",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 20),
                    ),
                    Text(
                      "나이 : 23살,",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 20),
                    ),
                    Text(
                      "학번 : 20200931,",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 20),
                    ),
                    Text(
                      "소속 : 금오공대 개발팀,",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 20),
                    ),
                    Text(
                      "좌우명 : 몰라잉",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 20),
                    ),
                    Text(
                      "자기소개 : 안녕하세용",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 20),
                    )
                  ])
            ]))));
  }
}
