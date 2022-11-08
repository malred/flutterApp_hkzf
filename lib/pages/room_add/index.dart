// pages/room_add/index.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/widgets/CommonFormItem.dart';
import 'package:myapp/widgets/commonSelectFormItem.dart';
import 'package:myapp/widgets/common_floating_action_button.dart';
import 'package:myapp/widgets/common_image_picker.dart';
import 'package:myapp/widgets/common_radio_form_item.dart';
import 'package:myapp/widgets/common_title.dart';

class RoomAddPage extends StatefulWidget {
  @override
  State<RoomAddPage> createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0;
  int decorationType = 0;
  int roomType = 0;
  int floor = 0;
  int oriented = 0;

  //控制输入框
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();

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
          CommonFormItem(
            label: '小区',
            contentBuilder: (context) {
              return Container(
                  child: GestureDetector(
                //让点击能在整个gestureDetector内生效
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  Navigator.of(context).pushNamed('search');
                },
                child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '请选择小区',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    )),
              ));
            },
          ),
          CommonFormItem(
            label: '租金',
            hintText: '请输入租金',
            suffixText: '元/月',
            controller: TextEditingController(),
          ),
          CommonFormItem(
            label: '大小',
            hintText: '请输入房屋大小',
            suffixText: '平方米',
            controller: TextEditingController(),
          ),
          CommonRadioFormItem(
            label: '租赁方式',
            options: ['合租', '整租'],
            value: rentType,
            onChange: (index) {
              setState(() {
                rentType = index;
              });
            },
          ),
          CommonSelectFormItem(
            label: '户型',
            value: roomType,
            onChange: (val) {
              setState(() {
                roomType = val;
              });
            },
            options: ['一室', '二室', '三室', '四室'],
          ),
          CommonSelectFormItem(
            label: '楼层',
            value: floor,
            onChange: (val) {
              setState(() {
                floor = val;
              });
            },
            options: ['高楼层', '中楼层', '低楼层'],
          ),
          CommonSelectFormItem(
            label: '朝向',
            value: oriented,
            onChange: (val) {
              setState(() {
                oriented = val;
              });
            },
            options: ['东', '西', '南', '北'],
          ),
          CommonRadioFormItem(
            label: '装修',
            options: ['精装', '简装'],
            value: decorationType,
            onChange: (index) {
              setState(() {
                decorationType = index;
              });
            },
          ),
          CommonTitle('房屋头像'),
          CommonImagePicker(onChange: (List<File> files) {}),
          CommonTitle('房屋标题'),
          Container(
            //添加左右两边边距
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入标题 (例如: 整租,小区名 2室 2000元) ',
              ),
            ),
          ),
          CommonTitle('房屋配置'),
          CommonTitle('房屋描述'),
          Container(
            margin: EdgeInsets.only(bottom: 100),
            //添加左右两边边距
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: descriptionController,
              //最大行数
              maxLines: 11,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入房屋描述信息',
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('提交', () {}),
    );
  }
}
