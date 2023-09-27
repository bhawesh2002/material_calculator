class CalcLogic {
  String exp = "";
  Function? expChanged;
  void modifyExp(String number) {
    exp += number;
    expChanged?.call();
  }

  void clearExp() {
    exp = "";
    expChanged?.call();
  }

  void delChar() {
    exp = exp.substring(0, (exp.length - 1));
    expChanged?.call();
  }
}
