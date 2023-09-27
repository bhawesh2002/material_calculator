import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String number;
  const Button({super.key, required this.number});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.green.shade200,
            child: Center(
              child: Text(
                widget.number,
                textScaleFactor: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
