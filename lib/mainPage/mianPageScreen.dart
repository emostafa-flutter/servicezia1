import 'package:firstapp/screens/config.dart';
import 'package:flutter/material.dart';

class MainPageUser extends StatefulWidget {
    //static const String MAIN_PAGE_SCREEN = "MainPageScreen";
  @override
  _MainPageUserState createState() => _MainPageUserState();
}

class _MainPageUserState extends State<MainPageUser> {

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
            
            ],
          ),
        ),
      ),
    );
  }
}