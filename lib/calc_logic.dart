import 'package:get/get.dart';

class CalcLogic extends GetxController {
  String exp = "";
  List<String> operators = [
    '%',
    '/',
    '+',
    '-',
    '*',
  ];
  void modifyExp(String number) {
    exp += number;
    update();
  }

  bool isOperator(String number) {
    for (String op in operators) {
      if (number == op) {
        return true;
      }
    }
    return false;
  }

  void clearExp() {
    exp = "";
    update();
  }

  void delChar() {
    if (exp != "") {
      exp = exp.substring(0, (exp.length - 1));
    }
    update();
  }
}
