void main(List<String> args) {
  Map transMap = {'lunch': '午餐', 'dinner': '晚餐', "hello": "你好"};
  print(transMap);
  // 英文找到对于中文描述
  print(transMap['lunch']);
  print(transMap['dinner']);
  transMap['hello'] = '你非常好';
  print(transMap['hello']);

  // 字典循环
  transMap.forEach((key, value) {
    print('$key: $value');
  });
  transMap.addAll({'supper': ' 超级'});
  print(transMap);

  print(transMap.containsKey('supper'));

  transMap.remove('supper');
  print(transMap);

  transMap.clear();
  print(transMap);
}
