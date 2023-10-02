import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_calculator/calc_logic.dart';
import 'package:material_calculator/numpad.dart';
import 'package:material_calculator/theme.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final calcLogic = Get.put(CalcLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: NumPad(),
        ),
        Container(
          decoration: BoxDecoration(
            color: MaterialCalcColors().shade100,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.38,
        ),
        Positioned(
          top: 100,
          right: 20,
          child: GetBuilder<CalcLogic>(
            builder: (context) {
              return Text(
                calcLogic.exp,
                textScaleFactor: 3,
                style: TextStyle(
                  color: MaterialCalcColors().shade800,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 200,
          right: 20,
          child: GetBuilder<CalcLogic>(
            builder: (context) {
              return Text(
                calcLogic.result,
                textScaleFactor: 3.5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MaterialCalcColors().shade800,
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
