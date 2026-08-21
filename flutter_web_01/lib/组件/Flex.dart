import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("")),
        body: Container(
          color: Colors.red,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Container(color: Colors.blue, height: 100),
              Expanded(child: Container(color: Colors.amber)),
              Container(color: Colors.red, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
