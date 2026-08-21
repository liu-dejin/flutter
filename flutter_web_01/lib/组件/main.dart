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
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("登录")),

        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    height: 250,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text("轮播图${index + 1}"),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(10, (index) {
                          return GestureDetector(
                            onTap: () {
                              // 切换到具体图片
                              // _controller.jumpToPage(index);
                              _controller.animateToPage(
                                index,
                                duration: Duration(seconds: 1),
                                curve: Curves.easeIn,
                              );
                              _currentIndex = index;
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: _currentIndex == index
                                    ? Colors.red
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverPersistentHeader(delegate: _StickCategory(), pinned: true),
            SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(100, (index) {
                return Container(
                  color: Colors.teal,
                  child: Text(
                    "我是第${index + 1}个",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }),
            ),
            // SliverList.separated(
            //   itemCount: 100,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       color: Colors.blue,
            //       child: Text(
            //         "我是第${index + 1}个",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     );
            //   },
            //   separatorBuilder: (context, index) {
            //     return SizedBox(height: 20);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class _StickCategory extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      child: ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.pink,
            alignment: Alignment.center,
            child: Text(
              "分类${index + 1}",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 200; // 最大展开高度

  @override
  // TODO: implement minExtent
  double get minExtent => 60; // 最小折叠高度

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false; // 不需要重建
  }
}
