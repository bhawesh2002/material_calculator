import 'package:flutter/material.dart';
import 'package:material_calculator/components.dart';

class NumPad extends StatelessWidget {
  NumPad({super.key});

  @override
  final List<String> buttonName = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
  ];
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      color: Colors.green.shade100,
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          Button(
            number: buttonName[0],
          )
        ],
      ),
    );
  }
}
