import 'package:firstapp/screens/originalbutton.dart';
import 'package:flutter/material.dart';
import 'auth/registerMain.dart';
import 'config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  TextEditingController NameController = TextEditingController(),
      PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  child: TextField(
                    controller: NameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50),
                        ),
                      ),
                      labelText: 'Enter Your Email',
                      hintText: 'exp : test@gmail.com',
                      suffixIcon: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  child: TextFormField(
                    controller: PasswordController,
                    onTap: () {},
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50),
                        ),
                      ),
                      labelText: 'Enter Your Password',
                      suffixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Container(
            height: 50,
            child: OriginalButton(
                text: 'Login',
                onPressed: SendDataRegisterUserApi,
                txtColor: Colors.black,
                bgColor: colorButton),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  SendDataRegisterUserApi() async {
    http.Response res = await http.post(
      Uri.parse('http://192.168.1.200/craftsmen/api/loginApi.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'username': NameController.text,
          'password': PasswordController.text,
        },
      ),
    );
    print(
        '-----------------------------------------------------------------------------------------------');
    print(res.body.toString());
  }
}
