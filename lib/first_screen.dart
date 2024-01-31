import 'package:dart_maximilian/dice_rolling.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 250, 12, 255),
                Color.fromARGB(255, 180, 180, 180),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: DiceRoll(),
          ),
        ),
      ),
    );
  }
}
