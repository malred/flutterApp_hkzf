// pages/home/tab_search/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_search/dataList.dart';
import 'package:myapp/pages/home/tab_search/filter_bar/filter_drawer.dart';
import 'package:myapp/pages/home/tab_search/filter_bar/index.dart';
import 'package:myapp/widgets/room_list_item_widget.dart';
import 'package:myapp/widgets/search_bar/index.dart';

class TabSearch extends StatefulWidget {
  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //右边弹出的Drawer
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        //给一个空的action,可以消掉右上角的小图标,
        //会变成从右上角的角落往左拖动出来
        actions: [Container()],
        //设置appbar和body之间的阴影为0
        elevation: 0,
        centerTitle: true,
        title: SearchBar(
            showLocation: true,
            showMap: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            }),
      ),
      body: Column(
        children: [
          Container(
            height: 41.0,
            child: FilterBar((data) {}),
          ),
          Expanded(
              child: ListView(
            children: dataList.map((e) => RoomListItemWidget(e)).toList(),
          ))
        ],
      ),
    );
  }
}
