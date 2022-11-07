// pages/home/tab_profile/header.dart
import 'package:flutter/material.dart';

var loginRegisterStyle = TextStyle(fontSize: 20, color: Colors.white);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(color: Colors.deepOrangeAccent),
      height: 95.0,
      child: Row(
        children: <Widget>[
          //圆形区域
          Container(
              height: 65,
              width: 65,
              margin: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                //png显示不了
                backgroundImage: AssetImage('static/images/me.jpg'),
              )),
          Column(
            //居左
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 6)),
              Row(children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text(
                      '登录',
                      style: loginRegisterStyle,
                    )),
                Text('/', style: loginRegisterStyle),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text('注册', style: loginRegisterStyle)),
              ]),
              Text('登录后体验更多'),
            ],
          ),
        ],
      ),
    );
  }
}
