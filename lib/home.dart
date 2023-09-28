import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_calculator/calc_logic.dart';
import 'package:material_calculator/numpad.dart';

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
        Positioned(
            top: 100,
            right: 20,
            child: GetBuilder<CalcLogic>(builder: (context) {
              return Text(calcLogic.exp);
            }))
      ],
    ));
  }
}
