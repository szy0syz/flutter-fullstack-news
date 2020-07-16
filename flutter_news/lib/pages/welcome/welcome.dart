import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/screen.dart';
import 'package:flutter_news/common/values/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: kSetHeight(65)),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: kSetFontSize(24),
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeadDetail() {
    return Text('data');
  }

  /// 特性说明
  Widget _buildFeatureItem() {
    return Text('data');
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Text('data');
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 34, allowFontScaling: true);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildPageHeadTitle(),
            _buildPageHeadDetail(),
            _buildFeatureItem(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
