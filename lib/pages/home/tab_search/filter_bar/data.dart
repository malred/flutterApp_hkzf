// pages/home/tab_search/filter_bar/data.dart
//结果数据类型
class FilterBarResult {
  String? areaId;
  String? priceId;
  String? rentTypeId;
  List<String>? moreIds;

  FilterBarResult(
      {this.areaId, this.priceId, this.rentTypeId, this.moreIds = const []});
}

//通用类型
class GeneralType {
  String name;
  String id;

  GeneralType(this.name, this.id);
}

List<GeneralType> areaList = [
  GeneralType('区域1', '11'),
  GeneralType('区域2', '22'),
];
List<GeneralType> priceList = [
  GeneralType('价格1', '33'),
  GeneralType('价格2', '44'),
];

List<GeneralType> roomTypeList = [
  GeneralType('房屋类型1', '55'),
  GeneralType('房屋类型2', '66'),
];
List<GeneralType> rentTypeList = [
  GeneralType('出租类型1', '77'),
  GeneralType('出租类型2', '88'),
];

List<GeneralType> orientedList = [
  GeneralType('方向1', '99'),
  GeneralType('方向2', '00'),
];

List<GeneralType> floorList = [
  GeneralType('楼层1', 'aa'),
  GeneralType('楼层2', 'bb'),
];
