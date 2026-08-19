void main(List<String> args) {
  test();
  onFunction(test);
  print(add(1, 2));
}

// 声明了一个你们函数
Function test = () {
  print('test');
};
void onFunction(Function func) {
  func();
}

// int add(int a, int b) {
//   return a + b;
// }
int add(int a, int b) => a + b;
