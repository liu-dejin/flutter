import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "flutter组件初体验",
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      // 骨架
      home: Scaffold(
        // 头部区域
        appBar: AppBar(title: Text("头部区域")),
        // 内容区域
        body: Center(child: Text("内容区域")),
        // 底部区域
        bottomNavigationBar: SizedBox(
          height: 50,
          child: Center(child: Text("底部区域")),
        ),
      ),
    ),
  );
}
