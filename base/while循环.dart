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
  int index = 0;
  while (index < foods.length) {
    print(foods[index]);
    index++;
  }
  // 吃到第二个就饱了
  index = 0;
  while (index < foods.length) {
    if (index == 2) {
      break; // 跳出循环
    }
    print(foods[index]);
    index++;
  }
  // 跳过第二个
  while (index < foods.length) {
    if (index == 2) {
      index++;
      continue; // 跳出当前循环，继续下一次
    }
    print(foods[index]);
    index++;
  }
}
