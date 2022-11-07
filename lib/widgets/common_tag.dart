// widgets/common_tag.dart
import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  String title;
  Color color;
  Color backgroundColor;

  CommonTag.origin(this.title,
      {this.color = Colors.black, this.backgroundColor = Colors.grey});

  //工厂模式的构造函数
  factory CommonTag(String title) {
    switch (title) {
      case '近地铁':
        return CommonTag.origin(title,
            color: Colors.yellow, backgroundColor: Colors.redAccent);
      case '集中供暖':
        return CommonTag.origin(title,
            color: Colors.blue, backgroundColor: Colors.lightBlueAccent);
      case '随时看房':
        return CommonTag.origin(title,
            color: Colors.green, backgroundColor: Colors.lightGreenAccent);
      case '新上':
        return CommonTag.origin(title,
            color: Colors.pink, backgroundColor: Colors.orangeAccent);
      default:
        return CommonTag.origin(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.0),
      padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8.0)),
      child: Text(
        title,
        style: TextStyle(fontSize: 10.0, color: color),
      ),
    );
  }
}
