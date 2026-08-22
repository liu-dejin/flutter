import 'package:flutter/material.dart';

class HmCategory extends StatefulWidget {
  const HmCategory({super.key});

  @override
  State<HmCategory> createState() => _HmCategoryState();
}

class _HmCategoryState extends State<HmCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.blue,
            child: Text(
              "分类$index",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
