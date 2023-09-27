import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String number;
  const Button({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.green.shade200,
            child: Center(
              child: Text(number),
            ),
          ),
        ),
      ),
    );
  }
}
