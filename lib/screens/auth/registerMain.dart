import 'package:firstapp/screens/auth/registerProvider.dart';
import 'package:firstapp/screens/config.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/screens/auth/registerUser.dart';


class RegisterNewAcc extends StatefulWidget {
  @override
  _RegisterNewAccState createState() => _RegisterNewAccState();
}

class _RegisterNewAccState extends State<RegisterNewAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          toolbarHeight: 80,
          backgroundColor: primeryColor,
          title: Text('قم بإختيار نوع العضوية'),
          centerTitle: true,
        ),
        preferredSize: Size.fromHeight(80.0),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              
                image: AssetImage('assets/images/backgroundmain.jpg'),
                fit: BoxFit.fill),
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  height: 50.0,
                        width: MediaQuery.of(context).size.width/1.5,

                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: primeryColor,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('registerProvider');

                      },
                      child: Center(
                        child: Text(
                          'مهنى   ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',fontSize: 28),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
             
              Center(
                child: Container(
                  height: 50.0,
        width: MediaQuery.of(context).size.width/1.5,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: primeryColor,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('registerUser');


                      },
                      child: Center(
                        child: Text(
                          'عميل    ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',fontSize: 28),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
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
