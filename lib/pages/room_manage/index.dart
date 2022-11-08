// pages/room_manage/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_search/dataList.dart';
import 'package:myapp/widgets/common_floating_action_button.dart';
import 'package:myapp/widgets/room_list_item_widget.dart';

class RoomManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //顶部导航栏选项有几个
        length: 2,
        //初始选中哪个导航栏tab
        initialIndex: 0,
        child: Scaffold(
          //浮动按钮定位
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          //浮动的按钮
          floatingActionButton: CommonFloatingActionButton('发布房源', (context) {
            Navigator.of(context).pushNamed('roomAdd');
          }),
          appBar: AppBar(
            centerTitle: true,
            title: Text('服务管理'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: '已租',
                ),
                Tab(
                  text: '空置',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                  children:
                      dataList.map((e) => RoomListItemWidget(e)).toList()),
              ListView(
                  children:
                      dataList.map((e) => RoomListItemWidget(e)).toList()),
            ],
          ),
        ));
  }
}

