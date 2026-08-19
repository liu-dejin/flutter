void main(List<String> args) {
  Child c = Child(name: 'zs', age: 18);
  c.Study();
}

class Person {
  String? name;
  int? age;
  Person({this.name, this.age});
  void Study() {
    print("父类$name在学习");
  }
}

class Child extends Person {
  Child({String? name, int? age}) : super(name: name, age: age);
  @override
  void Study() {
    print("子类$name在学习");
  }
}
