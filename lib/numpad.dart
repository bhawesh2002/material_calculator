import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_calculator/calc_logic.dart';
import 'package:material_calculator/components.dart';

class NumPad extends StatelessWidget {
  NumPad({super.key});
  final List<String> buttonName = [
    'C',
    '( )',
    '%',
    '/',
    '1',
    '2',
    '3',
    '+',
    '4',
    '5',
    '6',
    '-',
    '7',
    '8',
    '9',
    '*',
    'DEL',
    '0',
    '.',
    '=',
  ];
  final calcLogic = Get.put(CalcLogic());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: buttonName.length,
        itemBuilder: (context, index) {
          return Button(
            number: buttonName[index],
            buttonFunct: () {
              calcLogic.modifyExp(buttonName[index]);
            },
          );
        },
      ),
    );
  }
}
