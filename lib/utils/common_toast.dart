// utils/common_toast.dart
import 'package:fluttertoast/fluttertoast.dart';

class CommonToast {
  static showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        //居中显示
        gravity: ToastGravity.CENTER);
  }
}
