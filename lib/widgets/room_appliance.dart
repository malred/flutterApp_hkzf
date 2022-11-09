// widgets/room_appliance.dart

import 'package:flutter/material.dart';
import 'package:myapp/widgets/common_check_button.dart';

class RoomApplianceItem {
  String title;
  String iconUri;
  bool isChecked;

  RoomApplianceItem(this.title, this.iconUri, this.isChecked);
}

List<RoomApplianceItem> _dataList = [
  RoomApplianceItem('衣柜', 'static/images/yg.png', false),
  RoomApplianceItem('洗衣机', 'static/images/xyj.png', false),
  RoomApplianceItem('空调', 'static/images/kt.png', false),
  RoomApplianceItem('天然气', 'static/images/trq.png', false),
  RoomApplianceItem('冰箱', 'static/images/bx.png', false),
  RoomApplianceItem('暖气', 'static/images/nq.png', false),
  RoomApplianceItem('电视', 'static/images/dsj.png', false),
  RoomApplianceItem('热水器', 'static/images/rsq.png', false),
  RoomApplianceItem('宽带', 'static/images/kd.png', false),
  RoomApplianceItem('沙发', 'static/images/sf.png', false),
];

class RoomAppliance extends StatefulWidget {
  //List<RoomApplianceItem>的改变事件
  ValueChanged<List<RoomApplianceItem>>? onChange;

  RoomAppliance({this.onChange});

  @override
  State<RoomAppliance> createState() => _RoomApplianceState();
}

class _RoomApplianceState extends State<RoomAppliance> {
  List<RoomApplianceItem> list = _dataList;

  @override
  Widget build(BuildContext context) {
    var baseLen = MediaQuery.of(context).size.width / 5;
    return Container(
      child: Wrap(
        //上下item之间间距
        runSpacing: 15,
        children: list
            .map((e) => GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //点击时改变了e的check
                    e.isChecked=!e.isChecked;
                    setState(() {
                      //遍历,把被选中的按钮重新加载到list,从而改变对应check值
                      list = list
                          .map((innerItem) => innerItem == e
                              ? RoomApplianceItem(
                                  e.title, e.iconUri, e.isChecked)
                              : innerItem)
                          .toList();
                    });
                    //如果有list值改变的监听方法
                    if(null!=widget.onChange){
                      widget.onChange!(list);
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    //一行放五个
                    width: baseLen,
                    child: Column(
                      children: [
                        Image.asset(e.iconUri, height: baseLen),
                        Text(e.title),
                        CommonCheckButton(e.isChecked)
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
