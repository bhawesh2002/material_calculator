import 'package:get/get.dart';

class CalcLogic extends GetxController {
  String exp = "";

  void modifyEcp(String number) {
    exp += number;
    update();
  }

  void clearExp() {
    exp = "";
    update();
  }

  void delChar() {
    exp = exp.substring(0, (exp.length - 1));
    update();
  }
}
