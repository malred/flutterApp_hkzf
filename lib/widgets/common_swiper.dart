// widgets/common_swiper.dart
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> defaultImages = [
  'https://pic1.zhimg.com/80/v2-7f7730e83c4d2a3ff02466fbe0fbdc85_720w.webp?source=1940ef5c',
  'https://pic1.zhimg.com/80/v2-7f7730e83c4d2a3ff02466fbe0fbdc85_720w.webp?source=1940ef5c',
  'https://pic1.zhimg.com/80/v2-7f7730e83c4d2a3ff02466fbe0fbdc85_720w.webp?source=1940ef5c',
];
var imageWidth = 750.0;
var imageHeight = 424.0;

class CommonSwiper extends StatelessWidget {
  final List<String> images;

  //构造函数可以指定默认值
  CommonSwiper({this.images = defaultImages});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imageWidth * imageHeight;
    return Container(
      //指定高度才能显示图片
      height: height,
      child: Swiper(
        //自动轮播
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(images[index], fit: BoxFit.fill);
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        //轮播图两边的箭头
        // control: new SwiperControl(),
      ),
    );
  }
}
