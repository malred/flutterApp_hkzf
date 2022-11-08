// routes.dart
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/home/index.dart';
import 'package:myapp/pages/login.dart';
import 'package:myapp/pages/not_found.dart';
import 'package:myapp/pages/register.dart';
import 'package:myapp/pages/room_add/index.dart';
import 'package:myapp/pages/room_detail/index.dart';
import 'package:myapp/pages/room_manage/index.dart';
import 'package:myapp/setting.dart';

class Routes {
  //定义路由名称
  static String home = '/';
  static String login = '/login';
  static String roomDetail='/room/:roomId';
  static String register = '/register';
  static String setting = '/setting';
  static String roomManage = '/roomManage';
  static String roomAdd = '/roomAdd';
  //定义路由处理函数
  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });
  static Handler _loginHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });
  static Handler _notFoundHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NotFoundPage();
  });
  static Handler _roomDetailHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId: params['roomId'][0],);
  });
  static Handler _registerHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RegisterPage();
  });
  static Handler _settingHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return SettingPage();
  });
  static Handler _roomManageHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomManagePage();
  });
  static Handler _roomAddHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomAddPage();
  });

  //关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(register, handler: _registerHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomManage, handler: _roomManageHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.notFoundHandler=_notFoundHandler;
  }
}
