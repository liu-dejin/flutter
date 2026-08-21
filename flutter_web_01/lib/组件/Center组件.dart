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
        appBar: AppBar(title: Text("Hello World")),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              child: Text("Hello World", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
