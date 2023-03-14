import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(GameApp());
}

class GameApp extends StatefulWidget {
  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  final style = TextStyle(color: Colors.white, fontSize: 32);

  String status = "";

  void play(String option) {
    int number = Random().nextInt(10);
    String computer = "";
    if (number % 2 == 0) {
      computer = "Par";
    } else {
      computer = "Ímpar";
    }

    if (option == computer) {
      setState(() => status = "Você ganhou! - Número sorteado foi: ${number}");
    } else {
      setState(() => status = "Você Perdeu! - Número sorteado foi: ${number}");
    }
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Text(status),
          Expanded(
              child: GestureDetector(
            onTap: () => play("Par"),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Center(
                child: Text(
                  "Par",
                  style: style,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () => play("Ímpar"),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "Ímpar",
                style: style,
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            ),
          ))
        ],
      )),
    );
  }
}
