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
      body: Center(
        child: NumPad(),
      ),
    );
  }
}
