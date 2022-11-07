// applicaion.dart
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:myapp/routes.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      //设置主题颜色
      theme: ThemeData(
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              //标题栏颜色
              primary: Colors.deepOrange,
              //字体颜色
              onPrimary: Colors.white,
              secondary: Colors.green,
              onSecondary: Colors.deepOrangeAccent,
              error: Colors.red,
              onError: Colors.yellow,
              background: Colors.white,
              onBackground: Colors.pink,
              surface: Colors.deepOrangeAccent,
              onSurface: Colors.deepOrangeAccent)),
      //关闭右上角debug标签
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generator,
    );
  }
}
