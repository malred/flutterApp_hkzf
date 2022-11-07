// widgets/page_content.dart
import 'package:flutter/material.dart';
import 'package:myapp/routes.dart';

class PageContent extends StatelessWidget {
  final String name;

  // //构造函数
  // const PageContent({Key: key, this.name}) :super(key: key);
  const PageContent({ required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('当前页面: $name'),
      ),
      body: ListView(
        children: [
          MaterialButton(child: Text(Routes.home),onPressed:(){
            //跳转到首页
            Navigator.pushNamed(context, Routes.home);
          }),
          MaterialButton(child: Text(Routes.login),onPressed:(){
            //跳转到登录页
            Navigator.pushNamed(context, Routes.login);
          }),
          MaterialButton(child: Text('不存在的页面'),onPressed:(){
            Navigator.pushNamed(context, '/nf');
          }),
          MaterialButton(child: Text('房屋详情: id:2222'),onPressed:(){
            Navigator.pushNamed(context, '/room/2222');
          })
        ],
      ),
    );
  }
}
