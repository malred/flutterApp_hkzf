import 'package:flutter/material.dart';

import './data.dart';

var textStyle = TextStyle(color: Colors.black54);

class ItemWidget extends StatelessWidget {
  final InfoItem data;

  ItemWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(data.navigateUrl);
        },
        child: Container(
          height: 90.0,
          padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
          child: Row(
            children: <Widget>[
              Image.network(
                data.imageUrl,
                width: 120.0,
                height: 90.0,
              ),
              Padding(padding: EdgeInsets.only(left: 10.0)),
              //垂直的布局
              Expanded(
                //column是列(垂直布局里就是垂直的列)
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          data.source,
                          style: textStyle,
                        ),
                        Text(
                          data.time,
                          style: textStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
