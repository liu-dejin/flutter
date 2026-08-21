import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("登录")),
        body: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.pink,
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              child: Text(
                "我是第${index + 1}个",
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              color: Colors.red,
              width: double.infinity,
              height: 10,
            );
          },
        ),
      ),
    );
  }
}
