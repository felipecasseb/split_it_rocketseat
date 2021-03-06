import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initializeFirebase()async{
    try{
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, "/login");
    } catch(e){
      Navigator.pushReplacementNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundSecondary,
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.background
        ),
        child: Center(
          child: Image.asset("image/logo.png")
        ),
      )
    );
  }
}
