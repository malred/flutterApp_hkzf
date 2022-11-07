// pages/home/tab_index/index_recommend.dart
import 'package:flutter/material.dart';

import './index_recommend_data.dart';
import './index_recommend_item.dart';

class IndexRecommend extends StatelessWidget {
  final dataList = indexRecommendData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '房屋推荐',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              Text(
                '更多',
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: dataList
                  .map((item) => IndexRecommendItemWidget(item))
                  .toList()),
        ],
      ),
    );
  }
}
