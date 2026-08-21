import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 获取频道列表
    _getChannels();
  }

  List<Map<String, dynamic>> _channels = [];

  void _getChannels() async {
    Response<dynamic> result = await DioUtil().get('channels');
    Map<String, dynamic> res = result.data as Map<String, dynamic>;
    // print(data["data"]["channels"] as List<Map<String, dynamic>>);
    List data = res["data"]["channels"] as List;
    _channels = data.cast<Map<String, dynamic>>(); // cast 转换列表项的类型
    setState(() {});
    print(_channels);
    // channels支持跨域
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("频道管理")),
        body: Text("内容"),
      ),
    );
  }
}

// 封装工具类
class DioUtil {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://geek.itheima.net/v1_0/';
  DioUtil() {
    _dio.options
      ..baseUrl =
          _baseUrl // 基地址
      ..connectTimeout =
          Duration(seconds: 10) // 连接超时
      ..sendTimeout =
          Duration(seconds: 10) // 发送超时
      ..receiveTimeout = Duration(seconds: 10); // 接受超时

    // 拦截器
    _addInterceptor();
  }
  void _addInterceptor() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        // 请求拦截器
        onRequest: (options, handler) {
          handler.next(options);
        },
        // 响应拦截器
        onResponse: (response, handler) {
          if (response.statusCode! >= 200 && response.statusCode! < 300) {
            handler.next(response); // 放过
            return;
          }
          // 处理异常
          handler.reject(DioException(requestOptions: response.requestOptions));
        },
        // 错误拦截器
        onError: (error, handler) {
          handler.reject(error);
        },
      ),
    );
  }

  // 向外提供get方法
  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? params}) {
    return _dio.get(url, queryParameters: params);
  }
}
