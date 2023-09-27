import 'package:flutter/material.dart';
import 'package:material_calculator/components.dart';

class NumPad extends StatelessWidget {
  const NumPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      color: Colors.green.shade100,
      child: GridView.count(
        crossAxisCount: 3,
        children: [Button()],
      ),
    );
  }
}
