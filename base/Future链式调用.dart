void main(List<String> args) {
  // 三个异步 链式调用
  Future f = Future(() {
    return "hello world";
  });
  f
      // 第一个任务 返回一个Future
      .then((value) {
        return Future(() => "task1");
      })
      // 第二个任务 返回一个Future
      .then(((value) {
        return Future(() => "$value task2");
      }))
      // 第三个任务 返回一个Future
      .then((value) {
        return Future(() => "$value task3");
      })
      .then((value) {
        print(value);
        throw Exception("最后一次抛异常");
      })
      .catchError((error) {
        print(error);
      });
}
