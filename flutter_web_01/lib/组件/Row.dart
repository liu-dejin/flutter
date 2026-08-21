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
          width: double.infinity,
          height: double.infinity,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.red),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 100, height: 100, color: Colors.blue),
              // SizedBox(height: 100),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              // SizedBox(height: 100),
              Container(width: 100, height: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
