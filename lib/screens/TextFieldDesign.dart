import 'package:flutter/material.dart';

class TxtFieldClass extends StatelessWidget {
  String txtlabel;
  String txtHin;
  Icon icon;
  Color colorContainer;
   
  @override
  Widget build(BuildContext context) {
    return Container(
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
                );
  }
}
