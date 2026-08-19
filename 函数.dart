void main(List<String> args) {
  print(sum(1, 2));
  Myprint('hello world');
}

int sum(int a, int b) {
  return a + b;
}

void Myprint(String msg) {
  print(msg);
}

// getValue() {
//   return 1 + 2;
// } 不推荐 应明确返回值
