import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login(
      {UserLoginRequestEntity params}) async {
    var response = await HttpUtil().post('/user/login', params: params);
    return UserLoginResponseEntity.fromJson(response);
  }
}
