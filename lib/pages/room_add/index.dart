// pages/room_add/index.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/common_floating_action_button.dart';
import 'package:myapp/widgets/common_title.dart';

class RoomAddPage extends StatefulWidget {
  @override
  State<RoomAddPage> createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('发布房源'),
      ),
      body: ListView(
        children: [
          CommonTitle('房源信息'),
          CommonTitle('房屋头像'),
          CommonTitle('房屋标题'),
          CommonTitle('房屋配置'),
          CommonTitle('房屋描述'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('提交', () {}),
    );
  }
}
