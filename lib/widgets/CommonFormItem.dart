// widgets/CommonFormItem.dart
import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  String label;
  String suffixText;
  String hintText;
  Widget Function(BuildContext context)? contentBuilder;

  Widget? suffix;
  ValueChanged? onChanged;
  TextEditingController? controller;

  CommonFormItem(
      {this.label = '',
      this.contentBuilder,
      this.suffix,
      this.suffixText = '',
      this.hintText = '',
      this.onChanged,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14),
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 1, color: Theme.of(context).dividerColor))),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            child: Text(
              label,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
          Expanded( //会拉伸child填充整个空间
            child: contentBuilder != null
                ? contentBuilder!(context)
                : TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                    ),
                  ),
          ),
          if (suffix != null) suffix!,
          if (suffix == null && suffixText != null) Text(suffixText),
        ],
      ),
    );
  }
}
