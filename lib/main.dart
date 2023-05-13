import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dice'),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftCountBtn = 1;
  int rightCountBtn = 1;

  void callBack() {
    setState(() {
      leftCountBtn = Random().nextInt(6) + 1;
      rightCountBtn = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                callBack();
              },
              child: Image.asset('images/dice$leftCountBtn.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  callBack();
                });
              },
              child: Image.asset("images/dice$rightCountBtn.png"),
            ),
          ),
        ],
      ),
    );
  }
}
