import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String number;
  final VoidCallback buttonFunct;
  const Button({super.key, required this.number, required this.buttonFunct});

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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
