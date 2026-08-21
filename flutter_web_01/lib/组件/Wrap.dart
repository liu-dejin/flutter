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
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: getList(),
          ),
        ),
      ),
    );
  }
}
