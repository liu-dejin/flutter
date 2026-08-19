void main(List<String> args) {
  var age = 20; // 不允许更改类型
  print(age);
  age = 21;
  print(age);
  var age1 = 20 + 21;
  print(age1);

  // age = "11111111";
  print(age);

  const num = 3.1415926;
  const length = 2 * num * 10; // 周长
  print(length);

  // const 表达式的值不允许有变量值
  // const num1 = age;

  final time = DateTime.now();
  // time = DateTime.now(); // 运行时才确定 不可以修改
}
