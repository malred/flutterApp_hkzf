// widgets/common_radio_form_item.dart
import 'package:flutter/material.dart';
import 'package:myapp/widgets/CommonFormItem.dart';

class CommonRadioFormItem extends StatelessWidget {
  String label;
  List<String> options;
  int value;
  ValueChanged? onChange;

  CommonRadioFormItem(
      {this.label = '',
      this.options = const [],
      this.value = 0,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contentBuilder: (context) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //generate也是遍历
              children: List.generate(
                  options.length,
                  (index) =>
                      //设置groupValue对应的radio为选中
                      Row(
                        children: [
                          Radio(
                              value: index,
                              groupValue: value,
                              onChanged: onChange),
                          Text(options[index]),
                        ],
                      ))),
        );
      },
    );
  }
}
