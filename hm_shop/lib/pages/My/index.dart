import 'package:flutter/material.dart';

class MyView extends StatefulWidget {
  const MyView({super.key});

  @override
  State<MyView> createState() => _MyView();
}

class _MyView extends State<MyView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("我的页面"));
  }
}
