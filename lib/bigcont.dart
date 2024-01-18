import 'package:flutter/material.dart';
import 'package:project_1/dice_roller.dart';
//import 'package:project_1/styled_text.dart';

class BigCont extends StatelessWidget {
  const BigCont(this.colorList, {super.key});
  final List<Color> colorList;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
