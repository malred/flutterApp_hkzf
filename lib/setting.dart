// setting.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('设置'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              CommonToast.showToast('已经退出登录');
            },
            child: Text('退出登录'),
          )
        ],
      ),
    );
  }
}
