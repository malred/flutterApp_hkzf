// pages/home/tab_search/filter_bar/filter_drawer.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_search/filter_bar/data.dart';
import 'package:myapp/scoped_model/room_filter.dart';
import 'package:myapp/utils/scoped_model.dart';
import 'package:myapp/widgets/common_title.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataList = ScopedModelHelper.getModel<FilterBarModel>(context).dataList;
    roomTypeList = dataList['roomTypeList']!;
    orientedList = dataList['orientedList']!;
    floorList = dataList['floorList']!;
    var selectedIds = ScopedModelHelper.getModel<FilterBarModel>(context)
        .selectedList
        .toList();
    _onChange(String val) {
      //点击drawer的item后触发
      ScopedModelHelper.getModel<FilterBarModel>(context)
          .selectedListToggleItem(val);
    }

    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            CommonTitle('户型'),
            FilterDrawerItem(
              list: roomTypeList,
              selectedIds: selectedIds,
              onChange: _onChange,
            ),
            CommonTitle('朝向'),
            FilterDrawerItem(
              list: orientedList,
              selectedIds: selectedIds,
              onChange: _onChange,
            ),
            CommonTitle('楼层'),
            FilterDrawerItem(
              list: floorList,
              selectedIds: selectedIds,
              onChange: _onChange,
            ),
          ],
        ),
      ),
    );
  }
}

class FilterDrawerItem extends StatelessWidget {
  List<GeneralType>? list;
  List<String>? selectedIds;
  ValueChanged<String>? onChange;

  FilterDrawerItem({this.list, this.selectedIds, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Wrap(
          spacing: 10,
          children: list!.map((e) {
            var isActive = selectedIds!.contains(e.id);
            return GestureDetector(
              onTap: () {
                if (onChange != null) onChange!(e.id);
              },
              behavior: HitTestBehavior.translucent,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    //背景颜色
                    color: isActive ? Colors.deepOrange : Colors.white,
                    border: Border.all(width: 1, color: Colors.deepOrange)),
                child: Center(
                  child: Text(
                    e.name,
                    style: TextStyle(
                        color: isActive ? Colors.black87 : Colors.deepOrange),
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }
}
