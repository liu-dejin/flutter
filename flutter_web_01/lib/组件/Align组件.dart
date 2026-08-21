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
        appBar: AppBar(title: Text("Align组件")),
        body: Container(
          color: Colors.blue,
          child: Align(
            alignment: Alignment.center,
            widthFactor: 2,
            heightFactor: 2,
            child: Icon(Icons.star, size: 150, color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
