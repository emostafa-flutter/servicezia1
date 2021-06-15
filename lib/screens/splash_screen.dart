import 'package:firstapp/screens/config.dart';
import 'package:firstapp/screens/introscreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


class OnSplashScreen extends StatefulWidget {
  @override
    createState() => _OnSplashScreenState();
}

class _OnSplashScreenState extends State<OnSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new IntroScreen(),
      title: new Text(
        'مرحبا بكم فى تطبيق سيرفيزيا للخدمات المنزلية',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            fontFamily: 'PNU',
            color: Colors.white),
      ),
      image: Image.asset(
        'assets/images/logo1.png',
      ),
      backgroundColor: primeryColor,
      loaderColor: Colors.white,
      photoSize: 100,
    );
  }
}
