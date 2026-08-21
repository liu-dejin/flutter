import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  List<Widget> getList() {
    return List.generate(20, (index) {
      return Container(color: Colors.blue, width: 100, height: 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("warp")),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Image.asset(
            "lib/images/img1.png",
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
