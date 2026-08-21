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

        // body: GridView.count(
        //   scrollDirection: Axis.horizontal,
        //   crossAxisCount: 1, // 设置固定的列数和行数
        //   mainAxisSpacing: 10,
        //   crossAxisSpacing: 10,
        //   children: List.generate(100, (index) {
        //     return Container(
        //       color: Colors.pink,
        //       child: Text(
        //         "我是第${index + 1}个",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     );
        //   }),
        // ),
        //   body: GridView.extent(
        //     maxCrossAxisExtent: 100,
        //     mainAxisSpacing: 10,
        //     crossAxisSpacing: 10,
        //     scrollDirection: Axis.horizontal,
        //     padding: EdgeInsets.all(20),
        //     children: List.generate(100, (index) {
        //       return Container(
        //         color: Colors.pink,
        //         child: Text(
        //           "我是第${index + 1}个",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       );
        //     }),
        //   ),
        body: GridView.builder(
          // 按照列数固定
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 10,
          // ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.5, // 内部容器的宽高比
          ),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.pink,
              child: Text(
                "我是第${index + 1}个",
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
