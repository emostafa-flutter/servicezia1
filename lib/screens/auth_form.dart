import 'package:firstapp/screens/originalbutton.dart';
import 'package:flutter/material.dart';

import 'config.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
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
                  onPressed: () {},
                  txtColor: Colors.black,
                  bgColor: colorButton)),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
