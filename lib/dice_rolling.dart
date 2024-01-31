import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final randomize = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 150,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: rollDice,
          icon: const Icon(
            Icons.replay,
            color: Color.fromARGB(255, 9, 34, 92),
          ),
          label: const Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 9, 34, 92),
            ),
          ),
        ),
      ],
    );
  }
}
