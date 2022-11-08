// widgets/common_title.dart
import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  String title;
  TextStyle style;
  EdgeInsets padding;
  EdgeInsets margin;

  //加list会默认值不起作用
  CommonTitle(this.title,
      {this.style = const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
      this.padding = const EdgeInsets.only(left: 10),
      this.margin = const EdgeInsets.all(0)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: padding,
      margin: margin,
      //居左
      alignment: Alignment.centerLeft,
      child: Text(title, style: style),
    );
  }
}
