void main(List<String> args) {
  Student s = Student(name: "张三", age: 18);
  s.song(s.name!);
  Teacher t = Teacher(name: "李四", age: 28);
  t.song(t.name!);
}

mixin Base {
  void song(String name) {
    print("$name在唱歌");
  }
}

class Student with Base {
  String? name;
  int? age;
  Student({this.name, this.age});
}

class Teacher with Base {
  String? name;
  int? age;
  Teacher({this.name, this.age});
}
