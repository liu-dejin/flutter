import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/goodsList",
      routes: {"/goodsList": (context) => GoodsListPage()}, // 登录页和购物车列表页不在路由表
      onGenerateRoute: (settings) {
        print(settings.name);
        // 是不是购物车列表页
        if (settings.name == "/CartList") {
          bool isLogin = true;
          if (isLogin) {
            return MaterialPageRoute(builder: (context) => CartList());
          } else {
            return MaterialPageRoute(builder: (context) => Login());
          }
        }
        return null;
      },
      // 404
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return NotFound();
          },
        );
      },
    );
  }
}

class GoodsListPage extends StatefulWidget {
  const GoodsListPage({super.key});

  @override
  State<GoodsListPage> createState() => _GoodsListPageState();
}

class _GoodsListPageState extends State<GoodsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表")),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/CartList");
          },
          child: Text("加入购物车"),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("登录页")),
      body: Center(
        child: TextButton(onPressed: () {}, child: Text("去登录")),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("购物车列表")),
      body: Center(
        child: TextButton(
          onPressed: () {
            // 404测试
            Navigator.pushNamed(context, "/aaaaaaaaa");
          },
          child: Text("去结算"),
        ),
      ),
    );
  }
}

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("404")),
        body: Center(child: Text("404")),
      ),
    );
  }
}
