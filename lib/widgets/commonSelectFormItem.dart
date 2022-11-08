// widgets/commonSelectFormItem.dart
import 'package:flutter/material.dart';
import 'package:myapp/widgets/CommonFormItem.dart';
import 'package:myapp/widgets/common_picker/index.dart';

class CommonSelectFormItem extends StatelessWidget {
  String label;
  List<String> options;
  int value;
  Function? onChange;

  CommonSelectFormItem(
      {this.label = '',
      this.options = const [],
      this.value = 0,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
        label: label,
        contentBuilder: (context) {
          return GestureDetector(
            //整个GestureDetector都可以被点击
            behavior: HitTestBehavior.translucent,
            onTap: () {
              var result = CommonPicker.showPicker(
                  context: context, options: options, Value: value);
              result.then((selectValue) => {
                    //改变值
                    if (value != selectValue &&
                        selectValue != null &&
                        onChange != null)
                      {onChange!(selectValue)}
                  });
            },
            child: Container(
              height: 40,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    options[value],
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
          );
        });
  }
}
