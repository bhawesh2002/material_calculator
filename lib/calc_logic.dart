String exp = "";

modifyExp(String number) {
  exp += number;
}

clearExp() {
  exp = "";
}

delChar() {
  exp = exp.substring(0, (exp.length - 1));
}
