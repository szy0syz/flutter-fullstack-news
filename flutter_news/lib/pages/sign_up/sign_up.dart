import 'package:flutter/material.dart';
import 'package:flutter_news/common/widgets/widgets.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // fullName email password 的控制器
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  /// -------------------------------

  // 返回上一页
  _handleNavPop() {
    Navigator.pop(context);
  }

  _handleSignUp() {
    if (!kCheckStringLength(_fullnameController.value.text, 5)) {
      toastInfo(msg: "用户名不能少于5位");
      return;
    }
    if (!kIsEmail(_emailController.value.text)) {
      toastInfo(msg: "邮箱地址错误");
      return;
    }
    if (!kCheckStringLength(_passController.value.text, 5)) {
      toastInfo(msg: "密码不能少于6位");
      return;
    }
  }

  /// -------------------------------

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: kSetHeight(50)),
      child: Text(
        "Sign up",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: kSetFontSize(24),
          height: 1,
        ),
      ),
    );
  }

  // 注册表单
  Widget _buildInputForm() {
    return Container(
      width: kSetWidth(295),
      // height: 204,
      margin: EdgeInsets.only(top: kSetHeight(49)),
      child: Column(
        children: <Widget>[
          inputTextEdit(
            controller: _fullnameController,
            keyboardType: TextInputType.emailAddress,
            hintText: "Full name",
            marginTop: 0,
          ),
          inputTextEdit(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
          ),
          // password input
          inputTextEdit(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Password",
            isPassword: true,
          ),
          // 创建账号
          Container(
            height: kSetHeight(44),
            margin: EdgeInsets.only(top: kSetHeight(15)),
            child: btnFlatButtonWidget(
              onPressed: _handleSignUp,
              gbColor: AppColors.primaryElement,
              fontWeight: FontWeight.w600,
              width: kSetWidth(295),
              title: "Create an account",
            ),
          )
        ],
      ),
    );
  }

  // 第三方
  Widget _buildThirdPartyLogin() {
    return Container(
      width: kSetWidth(295),
      margin: EdgeInsets.only(bottom: kSetHeight(40)),
      child: Column(
        children: <Widget>[
          Text(
            "Or sign in with social networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: kSetFontSize(16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: kSetHeight(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "twitter",
                ),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "google",
                ),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "facebook",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // 有账号
  Widget _buildHaveAccountButton() {
    return Container(
      margin: EdgeInsets.only(bottom: kSetHeight(20)),
      child: btnFlatButtonWidget(
        onPressed: _handleNavPop,
        width: 294,
        gbColor: AppColors.secondaryElement,
        fontColor: AppColors.primaryText,
        title: "I have an account",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  /// -------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: transparentAppBar(context: context, actions: []),
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(height: 1),
            _buildLogo(),
            _buildInputForm(),
            Spacer(),
            _buildThirdPartyLogin(),
            _buildHaveAccountButton(),
          ],
        ),
      ),
    );
  }
}
