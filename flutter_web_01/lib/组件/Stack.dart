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
          color: Colors.black,
          child: Stack(
            children: [
              Container(width: 300, height: 300, color: Colors.red),
              Positioned(
                left: 20,
                top: 20,
                child: Container(width: 200, height: 200, color: Colors.green),
              ),
            ],
          ),
        ),
        //   child: Stack(
        //     children: [
        //       Container(width: 300, height: 300, color: Colors.red),
        //       Container(width: 200, height: 200, color: Colors.green),
        //       Container(width: 100, height: 100, color: Colors.blue),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
