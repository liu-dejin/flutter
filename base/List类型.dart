void main(List<String> args) {
  List list = ['张三', '李四', '王五'];
  print(list);
  list.add("赵六");
  print(list);
  list.addAll(["小明1", "小红1"]);
  print(list);
  list.addAll(["小明2", "小红2"]);
  print(list);
  list.remove("小明");
  print(list);
  list.removeLast();
  print(list);
  // 删除范围  包前不包后
  list.removeRange(0, 2);
  print(list);

  list.forEach((item) {
    // item 是当前遍历到的元素
    print(item);
  });

  // 是不是所有的同学都是 2 个字符
  bool isAllStudentName2Char = list.every((item) {
    return item.toString().length == 2;
  });
  print(isAllStudentName2Char);

  print(
    list.where((item) {
      return item.toString().length == 2;
    }).toList(),
  );

  // list 属性 .属性
  print(list.length);
  print(list.last); // 最后一个元素
  print(list.first); // 第一个元素
  print(list.isEmpty); // 是否为空
}
