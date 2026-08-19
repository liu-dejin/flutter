void main(List<String> args) {
  List<String> l = [];
  l.add("2");
  // l.add(1);
  // l.add(true);

  // Map map = {};
  // map["name"] = "张三";
  // map["age"] = 18;
  // map["height"] = 1.78;
  // map["isMan"] = true;
  Map<String, int> map = {};
  // map["name"] = "张三";
  map["age"] = 18;
  // map["height"] = 1.78;
  // map["isMan"] = true;
  // print(map);

  getValue<int>(123);
  print<int>([1, 2, 3]);
}

// 函数泛型
T getValue<T>(T value) {
  return value;
}

void print<T>(List<T> list) {
  for (var i = 0; i < list.length; i++) {
    print(list[i] as List<dynamic>);
  }
}

// 类泛型
class Person<T> {
  T? name;
  T? age;
  Person({this.name, this.age});
}
