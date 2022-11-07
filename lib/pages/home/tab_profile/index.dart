// pages/home/tab_profile/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/info/index.dart';
import 'package:myapp/pages/home/tab_profile/advertisement.dart';
import 'package:myapp/pages/home/tab_profile/function_button.dart';
import 'package:myapp/pages/home/tab_profile/header.dart';
import 'package:myapp/pages/home/info/data.dart';
class TabProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //去掉阴影(设置高层级)
        elevation: 0,
        centerTitle: true,
        title: Text('我的'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed('setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: [
          //头部->头像+登陆注册
          Header(),
          //功能按钮
          FunctionButton(),
          //广告位招租
          Advertisement(),
          //资讯
          Info(true,infoData)
        ],
      ),
    );
  }
}