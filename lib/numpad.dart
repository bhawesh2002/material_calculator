import 'package:flutter/material.dart';
import 'package:material_calculator/components.dart';

class NumPad extends StatelessWidget {
  NumPad({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      color: Colors.green.shade100,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1),
        padding: const EdgeInsets.all(15),
        itemCount: buttonName.length,
        itemBuilder: (context, index) {
          return Button(number: buttonName[index]);
        },
      ),
    );
  }
}
