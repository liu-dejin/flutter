import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("无状态组件执行");
    return MaterialApp(
      home: Scaffold(body: Center(child: Text("Hello World"))),
    );
  }
}
