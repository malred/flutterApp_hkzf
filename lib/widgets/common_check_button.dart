// widgets/common_check_button.dart
import 'package:flutter/material.dart';
class CommonCheckButton extends StatelessWidget {
  bool isChecked;

  CommonCheckButton(this.isChecked);
  @override
  Widget build(BuildContext context) {
    return isChecked
        ? Icon(Icons.check_circle, color: Colors.deepOrangeAccent)
        : Icon(Icons.radio_button_unchecked, color: Colors.deepOrangeAccent);
  }
}
