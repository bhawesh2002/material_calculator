import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Colors.green.shade200,
        child: Center(
          child: Text('1'),
        ),
      ),
    );
  }
}
