import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

// 无状态组件 继承StatelessWidget 重写build方法
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter组件初体验",
      home: Scaffold(
        appBar: AppBar(title: Text("头部区域")),
        body: Center(child: Text("内容区域")),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Center(child: Text("底部区域")),
        ),
      ),
    );
  }
}
