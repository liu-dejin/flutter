void main(List<String> args) {
  test();
}

void test() async {
  try {
    String res = await Future(() {
      return "hello world";
      // throw Exception();
    });
    // await Future.delayed(Duration(seconds: 2));
    print(res);
  } catch (e) {
    print("catch error");
  }

  // await需要等待 成功之后才会执行
}
