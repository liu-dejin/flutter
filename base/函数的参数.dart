void main(List<String> args) {
  add(1, 2);
  print(combine('a', 'b', 'c'));
  showPerson('tom', address: 'beijing', age: 11);
}

// 必传参数
int add(int a, int b) {
  return a + b;
}

// 可选位置参数
String combine(String a, [String? b = "b", String? c]) {
  return a + (b ?? '') + (c ?? '');
}

// 可选命名参数
void showPerson(String name, {int? age = 18, String? address}) {
  print("name: ,$name 年龄 $age 地址 $address");
}
