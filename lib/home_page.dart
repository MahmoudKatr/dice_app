import 'package:flutter/material.dart';
import 'package:tick_tack/dice_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: DiceChess(),
    );
  }
}
