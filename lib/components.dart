import 'package:flutter/material.dart';
import 'package:material_calculator/theme.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String number;
  final VoidCallback buttonFunct;
  final Color color;
  const Button(
      {super.key,
      required this.number,
      required this.buttonFunct,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: buttonFunct,
          child: Container(
            color: MaterialCalcColors().shade300,
            child: Center(
              child: Text(
                number,
                textScaleFactor: 1.5,
                style: TextStyle(color: color, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
