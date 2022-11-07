// pages/home/tab_index/index_navigator.dart
import 'package:flutter/material.dart';
import './index_navigator_item.dart';
class IndexNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
      child: Row(
        //排列开
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList
            .map((item) =>
                //可点击的按钮
                InkWell(
                  onTap: () {
                    item.onTap(context);
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset(item.imageUrl,width: 47.5,),
                      Text(item.title,style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),)
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
