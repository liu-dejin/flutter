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
          // child: Text(
          //   "hello,flutter",
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Colors.blue,
          //     fontStyle: FontStyle.italic,
          //     fontWeight: FontWeight.w900,
          //     decoration: TextDecoration.underline,
          //   ),
          // ),
          child: Text.rich(
            TextSpan(
              text: "hello",
              children: [
                TextSpan(
                  text: "flutter",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "!",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
