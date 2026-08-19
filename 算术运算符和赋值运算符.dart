void main(List<String> args) {
  double item = 18.98;
  double price = 10.0;
  double total = item * price;
  print(total);
  total = total - 10;
  print(total);

  // 整除
  int count = 10;
  int rest = count ~/ 3;
  print(rest);

  print(10 % 3);

  // 赋值运算符
  double a = 1;
  a += 2;
  print(a);
  a -= 2;
  print(a);
  a *= 2;
  print(a);
  a /= 2;
  print(a);
}
