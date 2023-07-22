import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
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
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;
  void ChangeDiceFace() {
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
// child : floatingActionButton: FloatingActionButton(
// child: Icon(Icons.navigation),
// backgroundColor: Colors.green,
// foregroundColor: Colors.white,
// onPressed: () => {},
// ),
