import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  final style = TextStyle(color: Colors.white, fontSize: 32);

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Center(
              child: Text(
                "Par",
                style: style,
              ),
            ),
          )),
          Expanded(
              child: Container(
            color: Colors.blue,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Center(
                child: Text(
              "Ímpar",
              style: style,
            )),
          ))
        ],
      )),
    );
  }
}
