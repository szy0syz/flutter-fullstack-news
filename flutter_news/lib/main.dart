import 'package:flutter/material.dart';
import 'package:flutter_news/global.dart';
import 'package:flutter_news/routes.dart';
import 'package:flutter_news/pages/welcome/welcome.dart';

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: staticRoutes,
      home: WelcomePage(),
    );
  }
}
