import 'package:flutter_news/pages/sign_in/sign_in.dart';
import 'package:flutter_news/pages/sign_up/sign_up.dart';
import 'package:flutter_news/pages/application/application.dart';

var staticRoutes = {
  "/sign-in": (context) => SignIn(),
  "/sign-up": (context) => SignUp(),
  "/app": (context) => ApplicationPage(),
};
