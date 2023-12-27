import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  //onPressed function:void rollDice(){} or use (){}->if we donot have and code
  void rollDice() {
    //0 to 5 only 6 , if 1 is added value:1 to 6
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/image/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: Text("Roll Dice")) //onPressed:rollDice,
    ]);
  }
}
