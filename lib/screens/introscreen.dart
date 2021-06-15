import 'package:firstapp/screens/config.dart';
import 'package:firstapp/screens/tips.dart';
import 'package:flutter/material.dart';
import 'onBording.dart';
import 'originalbutton.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/logo1.png'),
              Text(
                'جميع خدماتك فى تطبيق واحد',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  fontFamily: 'PNU',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OriginalButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BoardningPage();
                  }));
                },
                txtColor: Colors.black,
                bgColor: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
