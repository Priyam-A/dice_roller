import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const  DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var val=2;
  final rand=Random();
  void rollDice(){
    setState(() {
      val = rand.nextInt(6)+1;
      //currPath = 'assets/images/dice-$val.png';
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$val.png', width: 150),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Roll'),
            ),
          ],
        );
  }
}