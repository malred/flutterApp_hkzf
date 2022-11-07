// pages/login.dart
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //控制密码显示与隐藏
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //顶部导航栏
        appBar: AppBar(
          centerTitle: true,
          title: Text('登录'),
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
                obscureText: !showPassword,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    //显示隐藏的图标
                    suffixIcon: IconButton(
                      icon: Icon(showPassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      //按钮点击事件
                      onPressed: () {
                        setState(() {
                          //改变密码显示隐藏
                          showPassword = !showPassword;
                        });
                      },
                    )),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                child: Text(
                  '登录',
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
                  Text('还没有账号?'),
                  TextButton(
                    child: Text(
                      '去注册~',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
