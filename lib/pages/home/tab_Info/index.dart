// pages/home/tab_Info/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/info/data.dart';
import 'package:myapp/pages/home/info/index.dart';
import 'package:myapp/widgets/search_bar/index.dart';

class TabInfo extends StatefulWidget {
  @override
  State<TabInfo> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SearchBar(onSearch: () {
          Navigator.of(context).pushNamed('search');
        }),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Info(false, infoData),
          Info(false, infoData),
          Info(false, infoData),
        ],
      ),
    );
  }
}
