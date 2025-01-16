import 'package:flutter/material.dart';
import 'dart:math';

class DiceChess extends StatefulWidget {
  const DiceChess({super.key});

  @override
  State<DiceChess> createState() => _DiceChessState();
}

class _DiceChessState extends State<DiceChess> {
  int dice1 = 1;
  int dice2 = 1;
  String check = "";
  void setDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
      if (dice1 == dice2) {
        check = "Equal to each other";
      } else {
        check = "Not equal to each other";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 300.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: setDice,
                  child: Image.asset('assets/images/dice$dice1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: setDice,
                  child: Image.asset('assets/images/dice$dice2.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            check,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
