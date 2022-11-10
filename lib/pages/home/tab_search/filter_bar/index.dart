// pages/home/tab_search/filter_bar/index.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_search/filter_bar/data.dart';
import 'package:myapp/pages/home/tab_search/filter_bar/item.dart';
import 'package:myapp/scoped_model/room_filter.dart';
import 'package:myapp/utils/scoped_model.dart';
import 'package:myapp/widgets/common_picker/index.dart';

class FilterBar extends StatefulWidget {
  ValueChanged<FilterBarResult>? onChange;

  FilterBar(this.onChange);

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  //4个不同bar的激活状态,激活弹出picker
  bool isAreaActive = false;
  bool isRentTypeActive = false;
  bool isPriceActive = false;
  bool isFilterActive = false;

  //bar选中的值的id
  String areaId = '';
  String rentTypeId = '';
  String priceId = '';
  List<String> moreIds = [];

  //bar改变值的事件
  _onAreaChange(context) {
    setState(() {
      isAreaActive = true;
    });
    var result = CommonPicker.showPicker(
        context: context,
        Value: 0,
        options: areaList.map((e) => e.name).toList());
    result.then((index) {
      if (index == null) return;
      setState(() {
        areaId = areaList[index!].id;
      });
      _onChange();
    }).whenComplete(() {
      //操作完成后,把选中状态改回
      setState(() {
        isAreaActive = false;
      });
    });
  }

  _onRentTypeChange(context) {
    setState(() {
      isRentTypeActive = true;
    });
    var result = CommonPicker.showPicker(
        context: context,
        Value: 0,
        options: rentTypeList.map((e) => e.name).toList());
    result.then((index) {
      if (index == null) return;
      setState(() {
        rentTypeId = rentTypeList[index!].id;
      });
      _onChange();
    }).whenComplete(() {
      //操作完成后,把选中状态改回
      setState(() {
        isRentTypeActive = false;
      });
    });
  }

  _onPriceChange(context) {
    setState(() {
      isPriceActive = true;
    });
    var result = CommonPicker.showPicker(
        context: context,
        Value: 0,
        options: priceList.map((e) => e.name).toList());
    result.then((index) {
      if (index == null) return;
      setState(() {
        priceId = priceList[index!].id;
      });
      _onChange();
    }).whenComplete(() {
      //操作完成后,把选中状态改回
      setState(() {
        isPriceActive = false;
      });
    });
  }

  _onFilterChange(context) {
    //打开右侧的drawer
    Scaffold.of(context).openEndDrawer();
  }

  _onChange() {
    var selectedList =
        ScopedModelHelper.getModel<FilterBarModel>(context).selectedList;
    if (widget.onChange != null) {
      widget.onChange!(FilterBarResult(
          areaId: areaId,
          rentTypeId: rentTypeId,
          priceId: priceId,
          moreIds: selectedList.toList()));
    }
  }

  _getData() {
    Map<String, List<GeneralType>> dataList = Map<String, List<GeneralType>>();
    dataList['roomTypeList'] = roomTypeList;
    dataList['orientedList'] = orientedList;
    dataList['floorList'] = floorList;
    ScopedModelHelper.getModel<FilterBarModel>(context).dataList = dataList;
  }

  //获取数据
  @override
  void initState() {
    Timer.run(_getData);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _onChange();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Item(
            title: '区域',
            isActive: isAreaActive,
            onTap: _onAreaChange,
          ),
          Item(
            title: '房型',
            isActive: isRentTypeActive,
            onTap: _onRentTypeChange,
          ),
          Item(
            title: '租金',
            isActive: isPriceActive,
            onTap: _onPriceChange,
          ),
          Item(
            title: '筛选',
            isActive: isFilterActive,
            onTap: _onFilterChange,
          ),
        ],
      ),
    );
  }
}
