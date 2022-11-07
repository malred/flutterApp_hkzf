// pages/home/tab_index/index_navigator_item.dart
import 'package:flutter/material.dart';
class IndexNavigatorItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home.png',
      //pushNamed才有左上角的返回
      (context) => {Navigator.of(context).pushNamed('login')}),
  IndexNavigatorItem('合租', 'static/images/pt.png',
      (context) => {Navigator.of(context).pushNamed('login')}),
  IndexNavigatorItem('地图找房', 'static/images/map.png',
      (context) => {Navigator.of(context).pushNamed('login')}),
  IndexNavigatorItem('去出租', 'static/images/dp.png',
      (context) => {Navigator.of(context).pushNamed('login')}),
];