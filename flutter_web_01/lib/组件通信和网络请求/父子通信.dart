import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}
// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           alignment: Alignment.center,
//           child: Column(
//             children: [
//               Text("父组件", style: TextStyle(fontSize: 20, color: Colors.red)),
//               Child(message: "张三"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // 无状态组件子组件
// class Child extends StatelessWidget {
//   final String? message;

//   const Child({super.key, this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         "子组件 $message",
//         style: TextStyle(fontSize: 20, color: Colors.blue),
//       ),
//     );
//   }
// }

// 有状态组件紫钻见
// class Child extends StatefulWidget {
//   final String message;
//   const Child({super.key, required this.message});

//   @override
//   State<Child> createState() => _ChildState();
// }

// class _ChildState extends State<Child> {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "子组件 ${widget.message}",
//       style: TextStyle(fontSize: 20, color: Colors.blue),
//     );
//   }
// }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> _list = [
    "鱼香肉丝",
    "宫保鸡丁",
    "红烧肉",
    "土豆丝",
    "土豆丝",
    "土豆丝",
    "土豆丝",
    "土豆丝",
    "土豆丝",
    "土豆丝",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(_list.length, (index) {
            return Child(
              message: _list[index],
              index: index,
              onDelete: (index) {
                _list.removeAt(index);
                setState(() {});
              },
            );
          }),
        ),
      ),
    );
  }
}

class Child extends StatefulWidget {
  final String message;
  final int index;
  final Function(int index) onDelete;
  const Child({
    super.key,
    required this.message,
    required this.index,
    required this.onDelete,
  });

  @override
  State<Child> createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            widget.message,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        IconButton(
          color: Colors.red,
          onPressed: () {
            widget.onDelete(widget.index);
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
