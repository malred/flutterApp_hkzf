// pages/home/tab_profile/advertisement.dart
import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, top: 30, left: 10, right: 10),
      child: Image.network(
        'http://upload.qianlong.com/2017/0222/1487742279917.jpg',
        height: 170,
        fit: BoxFit.cover,
      ),
    );
  }
}
