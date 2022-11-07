// pages/home/info/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/info/item_widget.dart';
import './data.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  Info(this.showTitle, this.dataList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (showTitle)
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10.0),
              child: Text(
                '最新资讯',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
          Column(
            children: dataList
                .map((item) => ItemWidget(item))
                .toList(),
          ),
        ],
      ),
    );
  }
}
