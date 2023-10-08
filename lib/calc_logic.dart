import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcLogic extends GetxController {
  //String to hold mathematical expression to be evaluated
  String exp = "";
  String result = "";
  bool isequalPressed = false;
  //list of operators
  List<String> operators = [
    '%',
    '/',
    '+',
    '-',
    'x',
  ];
  //A function that adds user input to the exp and makes sure that
  //the format of mathematical expression exp is correct
  void modifyExp(String number) {
    //check if the exp is empty and number is a operator
    if (isOperator(number) && exp.isEmpty) {
      number = '';
      exp.trim();
    }
    //Replace old operator with current operator
    if (isOperator(number) && exp.isNotEmpty) {
      if (multiOpChecker(exp[exp.length - 1], number)) {
        exp = exp.substring(0, exp.length - 1);
      }
    }
    //If any other button is pressed after pressing '=' then clear result
    if (isequalPressed == true) {
      result = '';
      result.trim();
      isequalPressed = false;
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
    result = "";
    update();
  }

//function to clear the last character from exp
  void delChar() {
    if (exp.isNotEmpty) {
      exp = exp.substring(0, (exp.length - 1));
    }
    update();
  }

  //use functiond defined in math_expressions.dart to evaluate the exp entered by the user
  void calculateExp() {
    String userInput = exp;
    if (userInput.isNotEmpty) {
      userInput = userInput.replaceAll("x", "*");
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel ctx = ContextModel();
      double output = expression.evaluate(EvaluationType.REAL, ctx);
      result = output.toString();
    }
    update();
  }

//call calculateExp and set isEqualPressed to true
  void equalPressed() {
    calculateExp();
    isequalPressed = true;
  }
}
