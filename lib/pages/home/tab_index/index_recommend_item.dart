// pages/home/tab_index/index_recommend_item.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_index/index_recommend_data.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data;

  IndexRecommendItemWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(data.navigateUri);
        },
        child: Container(
          //背景
          decoration: BoxDecoration(color: Colors.white),
          //去掉三个边距,再除2剩下的item(一行两个)的宽
          width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    data.title,
                    style: textStyle,
                  ),
                  Text(
                    data.subTitle,
                    style: textStyle,
                  ),
                ],
              ),
              Image.asset(
                data.imageUri,
                width: 55.0,
                height: 60.0,
              )
            ],
          ),
        ));
  }
}
