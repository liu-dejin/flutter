void main(List<String> args) {
  String text = '';
  print(text);
  text = "hello world";
  print(text);
  // 我要在当前时间吃饭
  text = "我要在${DateTime.now()}吃饭";
  print(text);
  String name = '张三';
  String age = '20';
  String info = '$name 今年 $age 岁';
  print(info);
}
