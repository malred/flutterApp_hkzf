// scoped_model/room_filter.dart
import 'package:myapp/pages/home/tab_search/filter_bar/data.dart';
import 'package:scoped_model/scoped_model.dart';

class FilterBarModel extends Model {
  List<GeneralType> _roomTypeList = [];
  List<GeneralType> _orientedList = [];
  List<GeneralType> _floorList = [];
  Set<String> _selectedList = Set<String>();

  //返回dataList
  Map<String, List<GeneralType>> get dataList {
    var result = Map<String, List<GeneralType>>();
    result['roomTypeList'] = _roomTypeList;
    result['orientedList'] = _orientedList;
    result['floorList'] = _floorList;
    return result;
  }

  set dataList(Map<String, List<GeneralType>> data) {
    _roomTypeList = data['roomTypeList']!;
    _orientedList = data['orientedList']!;
    _floorList = data['floorList']!;
    notifyListeners(); //主动触发事件
  }

  Set<String> get selectedList {
    return _selectedList;
  }

  //drawer点击item触发
  selectedListToggleItem(String data) {
    if (_selectedList.contains(data)) {
      _selectedList.remove(data);
    } else {
      _selectedList.add(data);
    }
    //更新视图
    notifyListeners();
  }

  @override
  notifyListeners(); //主动触发事件
}
