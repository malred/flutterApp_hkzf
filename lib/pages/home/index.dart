// pages/home/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_Info/index.dart';
import 'package:myapp/pages/home/tab_index/index.dart';
import 'package:myapp/pages/home/tab_search/index.dart';
import 'package:myapp/pages/home/tab_profile/index.dart';

//4个内容区
List<Widget> tabViewList = [
  TabIndex(),
  TabSearch(),
  TabInfo(),
  TabProfile(),
];
//4个barItem
List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //当前选中的bar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //页面内容
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //<4个item时默认fixed,大于等于4个item则默认shifting
        type: BottomNavigationBarType.fixed,
        //底部导航栏item
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        //点击事件
        onTap: _onItemTapped,
      ),
    );
  }
}
