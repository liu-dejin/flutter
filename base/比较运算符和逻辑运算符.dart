void main(List<String> args) {
  // 比较运算符 返回bool类型
  int a = 1;
  int b = 2;
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
  // 逻辑运算符 参与的为bool
  bool isOpenDraw = true;
  bool isLogin = false;
  print(isOpenDraw && isLogin); // 一假则假
  print(isOpenDraw || isLogin); // 一真则真
  print(!isOpenDraw);
}
