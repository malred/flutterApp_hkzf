// widgets/room_list_item_widget.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_search/dataList.dart';
import 'package:myapp/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;

  RoomListItemWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Image.network(
            data.imageUrl,
            width: 132.5,
            height: 100.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
            child: Column(
              //居左
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //overflow设置超出部分的样式
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Container(
                  width: 178.5,
                  child: Text(
                    data.subTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Wrap(
                  children: data.tags.map((e) => CommonTag(e)).toList(),
                ),
                Text(
                  '${data.price} 元/月',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
