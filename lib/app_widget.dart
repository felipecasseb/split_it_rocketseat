import 'package:flutter/material.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Split.it",
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => SplashPage(),
        "/login" : (context) => LoginPage(),
        "/error" : (context) => ErrorPage()
      }
    );
  }
}
