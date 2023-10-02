import 'package:flutter/material.dart';
import 'package:material_calculator/theme.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String number;
  final VoidCallback buttonFunct;
  final Color textColor;
  const Button(
      {super.key,
      required this.number,
      required this.buttonFunct,
      required this.textColor});

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
                style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
