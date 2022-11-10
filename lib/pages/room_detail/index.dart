// pages/room_detail/index.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/info/data.dart';
import 'package:myapp/pages/home/info/index.dart';
import 'package:myapp/pages/room_detail/data.dart';
import 'package:myapp/widgets/common_swiper.dart';
import 'package:myapp/widgets/common_tag.dart';
import 'package:myapp/widgets/common_title.dart';
import 'package:myapp/widgets/room_appliance.dart';
import 'package:share/share.dart';

var bottomButtonTextStyle = TextStyle(fontSize: 20, color: Colors.white);

class RoomDetailPage extends StatefulWidget {
  final String roomId;

  const RoomDetailPage({super.key, required this.roomId});

  @override
  State<RoomDetailPage> createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  RoomDetailData? data;
  bool isLike = false; //是否收藏
  bool showAllText = false; //是否完全显示文本内容(展开)
  @override
  void initState() {
    setState(() {
      data = defaultData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (null == data) return Container();
    //如果房屋描述大于100字就缩略样式
    bool showTextTool = data!.subTitle!.length > 100;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(data!.title!),
        actions: [
          IconButton(
              onPressed: () {
                Share.share('https://malred.github.io');
              },
              icon: Icon(Icons.share))
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CommonSwiper(
                images: data!.houseImgs!,
              ),
              CommonTitle(data!.title!),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    //底部对齐
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        data!.price!.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.pink),
                      ),
                      Text('元/月(押一付三)',
                          style: TextStyle(fontSize: 14, color: Colors.pink)),
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(left: 10, top: 6, bottom: 6),
                child: Wrap(
                  spacing: 4,
                  children: data!.tags!.map((e) => CommonTag(e)).toList(),
                ),
              ),
              //分割线
              Divider(
                color: Colors.grey,
                //首尾缩进
                indent: 10, endIndent: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 6, bottom: 6),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    BaseInfoItem('面积: ${data!.size!}平米'),
                    BaseInfoItem('楼层: ${data!.floor!}平米'),
                    BaseInfoItem('房型: ${data!.roomType!}平米'),
                    BaseInfoItem('装修: 精装'),
                  ],
                ),
              ),
              CommonTitle('房屋配置'),
              RoomApplianceList(data!.appliances!),
              CommonTitle('房屋概况'),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  //居左
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ?? 表示如果为空就 ...
                    Text(
                      data!.subTitle ?? '暂无房屋概况',
                      //最多显示多少行
                      maxLines: showAllText ? null : 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        showTextTool
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showAllText = !showAllText;
                                  });
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text(showAllText ? '展开' : '收起'),
                                    Icon(showAllText
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up)
                                  ],
                                ))
                            : Container(),
                        Text('举报'),
                      ],
                    ),
                  ],
                ),
              ),
              CommonTitle('猜你喜欢'),
              Info(false, infoData),
              Container(
                height: 100,
              )
            ],
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: 100,
            bottom: 0,
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
              color: Colors.white54,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 40,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            isLike ? Icons.star : Icons.star_border,
                            size: 24,
                            color:
                                isLike ? Colors.deepOrangeAccent : Colors.black,
                          ),
                          Text(
                            isLike ? '已收藏' : '收藏',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 6),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                          child: Text(
                        '联系房东',
                        style: bottomButtonTextStyle,
                      )),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                          child: Text(
                        '预约看房',
                        style: bottomButtonTextStyle,
                      )),
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BaseInfoItem extends StatelessWidget {
  BaseInfoItem(this.content);

  String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(fontSize: 16),
      ),
      width: (MediaQuery.of(context).size.width - 3 * 10) / 2,
    );
  }
}
