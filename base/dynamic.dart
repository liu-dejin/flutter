void main(List<String> args) {
  dynamic free = ""; // 无编译检查
  print(free);
  free = 1;
  print(free);
  free = true;
  print(free);
  free = [1, 2, 3];
  print(free);
  free = {'name': '张三', 'age': 20};
  print(free);
  // var text = '';
  // text.forEach;
}
