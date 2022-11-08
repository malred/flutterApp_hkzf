// widgets/room_appliance.dart
import 'package:myapp/pages/room_detail/index.dart';

class RoomApplianceItem{
  String title;
  String iconUri;
  bool isChecked;
  RoomApplianceItem(this.title, this.iconUri, this.isChecked);
}
List<RoomApplianceItem> dataList=[
  RoomApplianceItem('衣柜','static/images/yg.svg', false),
  RoomApplianceItem('洗衣机','static/images/yg.svg', false),
  RoomApplianceItem('空调','static/images/yg.svg', false),
  RoomApplianceItem('天然气','static/images/yg.svg', false),
  RoomApplianceItem('冰箱','static/images/yg.svg', false),
  RoomApplianceItem('暖气','static/images/yg.svg', false),
  RoomApplianceItem('电视','static/images/yg.svg', false),
  RoomApplianceItem('热水器','static/images/yg.svg', false),
  RoomApplianceItem('宽带','static/images/yg.svg', false),
  RoomApplianceItem('沙发','static/images/yg.svg', false),
];