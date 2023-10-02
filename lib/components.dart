import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String number;
  final VoidCallback buttonFunct;
  final Color textColor;
  final Color buttonColor;
  const Button(
      {super.key,
      required this.number,
      required this.buttonFunct,
      required this.textColor,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: buttonFunct,
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
          ),
          child: Center(
            child: Text(
              number,
              textScaleFactor: 1.5,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
