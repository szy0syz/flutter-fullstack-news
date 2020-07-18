import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class Global {
  /// 用户配置
  static UserLoginResponseEntity profile = UserLoginResponseEntity(
    accessToken: null,
  );

  // 是否 release 状态
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  static Future init() async {
    // 运行初始
    WidgetsFlutterBinding.ensureInitialized();

    // 工具初始
    await StorageUtil.init();
    HttpUtil();

    // 读取离线用户信息
    var _profileJSON = StorageUtil().getJSON(STORAGE_USER_TOKEN_KEY);
    if (_profileJSON != null) {
      profile = UserLoginResponseEntity.fromJson(_profileJSON);
    }

    // http 缓存

    // android 状态栏改为透明的沉浸 (针对安卓平台)
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  // 持久化用户信息
  static Future<bool> saveProfile(UserLoginResponseEntity userReponse) {
    profile = userReponse;
    return StorageUtil().setJSON(STORAGE_USER_TOKEN_KEY, profile.toJson());
  }
}
