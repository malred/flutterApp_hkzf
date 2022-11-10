// pages/home/tab_search/filter_bar/item.dart
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String? title;
  bool? isActive;
  Function(BuildContext)? onTap;

  Item({this.title, this.isActive, this.onTap});

  @override
  Widget build(BuildContext context) {
    var color = isActive! ? Colors.deepOrange : Colors.black87;
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap!(context);
      },
      child: Container(
        child: Row(
          children: <Widget>[
            Text(
              title!,
              style: TextStyle(color: color, fontSize: 18),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 20,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
