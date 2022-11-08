// widgets/common_picker/index.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonPicker {
  static Future<int?> showPicker({
    BuildContext? context,
    List<String>? options,
    int? Value,
    double height = 300,
  }) {
    return showCupertinoModalPopup<int>(
        context: context!,
        builder: (BuildContext context) {
          var buttonTextStyle = TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600);
          var controller = FixedExtentScrollController(initialItem: Value!);
          return Container(
            color: Colors.white,
            height: height,
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            //1是CupertinoPicker里的值
                            Navigator.of(context).pop(controller.selectedItem);
                          },
                          child: Text('确定')),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('取消')),
                    ],
                  ),
                ),
                Expanded(
                    child: CupertinoPicker(
                  scrollController: controller,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  //item的高度
                  itemExtent: 32,
                  //点击选择事件
                  onSelectedItemChanged: (val) {},
                  children: options!
                      .map(
                        (e) => Text(e),
                      )
                      .toList(),
                ))
              ],
            ),
          );
        });
  }
}
