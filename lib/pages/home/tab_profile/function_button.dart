// pages/home/tab_profile/function_button.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_profile/function_button_widget.dart';

import './function_button_data.dart';

class FunctionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
          //横向边距(左右之间的边距)
          spacing: 1.0,
          //纵向边距(上下之间的边距)
          runSpacing: 1.0,
          children: list.map((e) => FunctionButtonWidget(e)).toList()),
    );
  }
}
