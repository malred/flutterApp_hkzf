// pages/home/tab_search/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_search/dataList.dart';
import 'package:myapp/widgets/room_list_item_widget.dart';

import 'package:myapp/widgets/search_bar/index.dart';

class TabSearch extends StatefulWidget {
  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SearchBar(
            showLocation: true,
            showMap: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            }),
      ),
      body: Column(
        children: [
          Container(
            height: 40.0,
            child: Text('filterBar'),
          ),
          Expanded(
              child: ListView(
            children: dataList.map((e) => RoomListItemWidget(e)).toList(),
          ))
        ],
      ),
    );
  }
}
