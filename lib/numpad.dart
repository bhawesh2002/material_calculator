import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_calculator/calc_logic.dart';
import 'package:material_calculator/components.dart';
import 'package:material_calculator/theme.dart';

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
    'x',
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
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.white,
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
          if (buttonName[index] == 'C') {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.clearExp();
              },
              textColor: MaterialCalcColors().shade800,
              buttonColor: Colors.white,
            );
          } else if (buttonName[index] == '=') {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.calculateExp();
              },
              textColor: Colors.black,
              buttonColor: MaterialCalcColors().shade500,
            );
          } else if (buttonName[index] == 'DEL') {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.delChar();
              },
              textColor: Colors.red,
              buttonColor: MaterialCalcColors().shade400,
            );
          } else {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.modifyExp(buttonName[index]);
              },
              textColor: Colors.black,
              buttonColor: MaterialCalcColors().shade200,
            );
          }
        },
      ),
    );
  }
}
