import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String number;
  final VoidCallback buttonFunct;
  Color textColor = Colors.black;
  Button(
      {super.key, required this.number, required this.buttonFunct, textColor});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: buttonFunct,
          child: Container(
            color: Colors.green.shade200,
            child: Center(
              child: Text(
                number,
                textScaleFactor: 1.5,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
