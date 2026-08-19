void main(List<String> args) {
  Future f = Future(() {
    // return "hello world";
    // 没有抛异常  成功状态
    throw Exception();
  });
  // 接受成功状态
  f.then((value) {
    print(value);
  });
  // 处理失败
  f.catchError((error) {
    print(error);
  });
}
