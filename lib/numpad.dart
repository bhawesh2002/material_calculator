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
    '9',
    '8',
    '7',
    '+',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
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
      height: MediaQuery.of(context).size.height * 0.62,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
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
          //clear exp if 'C' is pressed
          if (buttonName[index] == 'C') {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.clearExp();
              },
              textColor: MaterialCalcColors().shade800,
              buttonColor: Colors.white,
            );
          }
          //evaluate the exp if '=' is pressed
          else if (buttonName[index] == '=') {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.equalPressed();
              },
              textColor: Colors.black,
              buttonColor: MaterialCalcColors().shade500,
            );
          }
          //delete last character exp if 'DEL' is pressed
          else if (buttonName[index] == 'DEL') {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.delChar();
              },
              textColor: MaterialCalcColors().shade800,
              buttonColor: MaterialCalcColors().shade400,
            );
          }
          //modify the exp if any other button is pressed
          else {
            return Button(
              number: buttonName[index],
              buttonFunct: () {
                calcLogic.modifyExp(buttonName[index]);
              },
              textColor: MaterialCalcColors().shade900,
              buttonColor: MaterialCalcColors().shade200,
            );
          }
        },
      ),
    );
  }
}
