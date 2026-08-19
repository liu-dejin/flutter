class Person {
  String? name = "";
  int? age = 0;
  String? sex = "男";
  // 默认构造函数
  // Person({String? name, int? age, String? sex}) {
  //   this.name = name ?? "";
  //   this.age = age ?? 0;
  //   this.sex = sex ?? "男";
  // }
  Person({this.name, this.age, this.sex});
  // 命名构造函数
  // Person.createPerson({String? name, int? age, String? sex}) {
  //   this.name = name ?? "";
  //   this.age = age ?? 0;
  //   this.sex = sex ?? "男";
  // }
  Person.createPerson({this.name, this.age, this.sex});
  void Study() {
    print("$name在学习");
  }
}

void main(List<String> args) {
  // Person p = Person();
  // p.name = "tom";
  // p.age = 18;
  // p.sex = "男";
  // p.Study();
  Person p = Person(name: "tom", age: 18, sex: "男");
  p.Study();
  Person p2 = Person(name: "jack", age: 19, sex: "女");
  p2.Study();
  Person p3 = Person.createPerson(name: "jack", age: 19, sex: "女");
  p3.Study();
}
