import 'package:firstapp/screens/auth/registerMain.dart';
import 'package:firstapp/screens/auth/registerProvider.dart';
import 'package:firstapp/screens/auth/registerUser.dart';
import 'package:firstapp/screens/auth_screen.dart';
import 'package:firstapp/screens/introscreen.dart';
import 'package:firstapp/screens/mainprofile/profile.dart';
import 'package:firstapp/screens/splash_screen.dart';
import 'package:firstapp/screens/tips.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnSplashScreen(),
      routes: {
        'login': (context) => AuthScreen(),
        'tips': (context) => Tips(),
        'register': (context) => RegisterNewAcc(),
        'registerUser': (context) => RegisterUser(),
        'registerProvider': (context) => RegisterProvider(),
      },
    );
  }
}
