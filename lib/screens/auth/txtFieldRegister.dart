import 'package:firstapp/screens/config.dart';
import 'package:flutter/material.dart';

 class TxtFieldRegsiter extends StatelessWidget {
  final String txtlabel;
  final String txtHin;
  final Icon icon;
  TextEditingController textEditingController ;


   TxtFieldRegsiter({ @required this.txtlabel, @required this.txtHin, @required this.icon,this.textEditingController}) ;
   
  @override
  Widget build(BuildContext context) {
    return Container(

                  decoration: BoxDecoration(
                    color: primeryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 55,
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50),
                        ),
                      ),
                      labelText: txtlabel,
                      
                      hintText: txtHin,
                      suffixIcon:icon,
                    ),
                  ),
                );
  }
}
