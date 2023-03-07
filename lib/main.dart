import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
            width: 200,
          ),
          Container(
            color: Colors.blue,
            width: 200,
          ),
          Container(
            color: Colors.green,
            width: 200,
          ),
          Container(
            color: Colors.yellow,
            width: 200,
          ),
          Container(
            color: Colors.black,
            width: 200,
          )
        ],
      )),
    );
  }
}
