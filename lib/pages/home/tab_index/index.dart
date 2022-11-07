// pages/home/tab_index/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/info/data.dart';
import 'package:myapp/pages/home/info/index.dart';
import 'package:myapp/pages/home/tab_index/index_navigator.dart';
import 'package:myapp/pages/home/tab_index/index_recommend.dart';
import 'package:myapp/widgets/common_swiper.dart';
import 'package:myapp/widgets/search_bar/index.dart';

class TabIndex extends StatelessWidget {
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
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          //使用轮播图组件
          CommonSwiper(),
          //4个导航图标
          IndexNavigator(),
          //推荐
          IndexRecommend(),
          //资讯
          Info(true, infoData)
        ],
      ),
    );
  }
}
