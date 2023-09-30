import 'package:get/get.dart';

class CalcLogic extends GetxController {
  //String to hold mathematical expression to beevaluated
  String exp = "";
  //list of operators
  List<String> operators = [
    '%',
    '/',
    '+',
    '-',
    '*',
  ];
  //A function that adds user input to the exp and makes sure that
  //the format of mathematical expression exp is correct
  void modifyExp(String number) {
    if (isOperator(number) && exp.isEmpty) {
      number = '';
      exp.trim();
    }
    if (isOperator(number) && exp.isNotEmpty) {
      if (multiOpChecker(exp[exp.length - 1], number)) {
        exp = exp.substring(0, exp.length - 1);
      }
    }
    exp += number;
    update();
  }

//function to check weather the number entered is an operator defined
//in list of operators or not
  bool isOperator(String number) {
    for (String op in operators) {
      if (number == op) {
        return true;
      }
    }
    return false;
  }

//function to check weather the previous number and current number are an operator
  bool multiOpChecker(String prevOp, String currOP) {
    for (String op in operators) {
      if (prevOp == op && isOperator(currOP)) {
        return true;
      }
    }
    return false;
  }

//function to clear the exp
  void clearExp() {
    exp = "";
    update();
  }

//function to clear the last character from exp
  void delChar() {
    if (exp.isNotEmpty) {
      exp = exp.substring(0, (exp.length - 1));
    }
    update();
  }
}
