import 'package:flutter/cupertino.dart';
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
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start, // 默认是center
            children: [
              Container(width: 100, height: 100, color: Colors.blue),
              // SizedBox(height: 100),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
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
