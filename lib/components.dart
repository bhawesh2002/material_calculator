import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  const NumPad({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.4,
      height: height * 0.5,
      decoration: BoxDecoration(
        color: Colors.green.shade200,
        border: Border.all(width: 2, color: Colors.green),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

Widget number() {
  return Material();
}
