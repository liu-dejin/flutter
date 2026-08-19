void main(List<String> args) {
  List<String> foods = [
    "第一个包子",
    "第二个包子",
    "第三个包子",
    "第四个包子",
    "第五个包子",
    "第六个包子",
    "第七个包子",
    "第八个包子",
    "第九个包子",
    "第十个包子", // 9
  ];
  for (var i = 0; i < foods.length; i++) {
    if (i == 2) {
      break; // 直接不吃了
      // continue;  // 跳过吃下一个
    }
    print(foods[i]);
  }
}
