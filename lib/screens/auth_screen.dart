import 'package:firstapp/screens/auth/registerMain.dart';
import 'package:flutter/material.dart';
import 'auth_form.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bgMain.jpg'),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 15,
              ),
              Image.asset('assets/images/logo1.png'),
              SizedBox(
                height: 25,
              ),
              AuthForm(),
              SizedBox(
                height: 25,
              ),
              Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    child: Text(
                      'تسجيل حساب جديد',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RegisterNewAcc.REGISTER_MAIN_SCREEN);
                    },
                  );
                },
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
