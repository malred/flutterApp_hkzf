// utils/scoped_model.dart
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelHelper {
  //返回T,使其自动类型推断
  static T getModel<T extends Model>(BuildContext context) {
    // rebuildOnChange会在状态更新时自动同步
    return ScopedModel.of<T>(context, rebuildOnChange: true);
  }
}
