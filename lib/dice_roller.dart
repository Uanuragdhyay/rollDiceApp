import 'dart:math';
import 'package:flutter/material.dart';
class DiceRoller extends StatefulWidget{
  const DiceRoller ({super.key});

  @override
   State<DiceRoller>createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceimage = 'assets/images/dice-2.png';
  var diceroll=2;
  final randomize = Random();

  void rollDice() {

    setState(() {
      diceroll=randomize.nextInt(6)+1;
      print(diceroll);
    });
  }

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
         'assets/images/dice-$diceroll.png',
          height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.black,
              textStyle: TextStyle(fontSize: 30)),
          child: const Text("roll the dice"),
        ),
      ],
    );
  }
}