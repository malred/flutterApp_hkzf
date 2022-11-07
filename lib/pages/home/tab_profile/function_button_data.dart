// pages/home/tab_profile/function_button_data.dart

import 'package:flutter/material.dart';

class FunctionButtonItem {
  String imageUri;
  String title;
  Function? onTapHandle;

  FunctionButtonItem(this.imageUri, this.title, this.onTapHandle);
}

List<FunctionButtonItem> list = [
  FunctionButtonItem('static/images/kfjl.png', '看房记录', null),
  FunctionButtonItem('static/images/dd.png', '我的订单', null),
  FunctionButtonItem('static/images/sc.png', '我的收藏', (context) {
    Navigator.of(context).pushNamed('sc');
  }),
  FunctionButtonItem('static/images/zj.png', '身份认证', null),
  FunctionButtonItem('static/images/lxwm.png', '联系我们', null),
  FunctionButtonItem('static/images/dzht.png', '电子合同', null),
  FunctionButtonItem('static/images/fwgl.png', '房屋管理', (context){
    Navigator.of(context).pushNamed('roomManage');
  }),
  FunctionButtonItem('static/images/qbgl.png', '钱包', null),
];
