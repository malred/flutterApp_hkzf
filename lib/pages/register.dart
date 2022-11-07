// pages/register.dart
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //顶部导航栏
        appBar: AppBar(
          centerTitle: true,
          title: Text('注册'),
        ),
        body: SafeArea(
          //所有方向边距30
          minimum: EdgeInsets.all(30),
          //listView高度会改变
          child: ListView(
            children: <Widget>[
              TextField(
                //输入框
                decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '请输入用户名',
                ),
              ),
              //加上边距
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                //密码隐藏 ***
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText: '确认密码',
                  hintText: '请再次输入密码',
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  //todo
                },
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                //居中
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('已有账号?'),
                  TextButton(
                    child: Text(
                      '去登录~',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    onPressed: () {
                      //pushNamed是叠加新路由,pushReplacementNamed是替换当前路由
                      //这样直接回退会回到首页,而不是上一页
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
