import 'dart:math';

import 'package:flutter/material.dart';

final randmizor = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNum = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: onClickHandler,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20 ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }

  void onClickHandler() {
    setState(() {
      currentDiceNum = randmizor.nextInt(6) + 1;
    });
  }
}
