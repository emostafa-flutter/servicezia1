import 'package:firstapp/screens/auth/txtFieldRegister.dart';
import 'package:flutter/material.dart';
import '../config.dart';
import '../originalbutton.dart';

class RegisterProvider extends StatefulWidget {
  @override
  _RegisterProviderState createState() => _RegisterProviderState();
}

class _RegisterProviderState extends State<RegisterProvider> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: primeryColor,
          title: Text('إنشاء حساب مهنى'),
          centerTitle: true,
        ),
        preferredSize: Size.fromHeight(100.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroundmain.jpg'),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 115,
                  width: 115,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.person),
                  txtHin: 'الاسم',
                  txtlabel: 'ادخل اسمك بالكامل',
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.email),
                  txtHin: 'البريد الالكترونى',
                  txtlabel: 'ادخل بريدك الالكترونى',
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.place),
                  txtHin: 'المحافظة/المدينة',
                  txtlabel: 'ادخل اسم المدينة والمحافظة المقيم بها',
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.lock),
                  txtHin: 'كلمة المرور',
                  txtlabel: 'أدخل كلمة المرور',
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.lock),
                  txtHin: 'تأكيد كلمة المرور',
                  txtlabel: 'أدخل تأكيد كلمة المرور',
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.phone),
                  txtHin: 'المحمول',
                  txtlabel: 'أدخل رقم هاتفك المحمول',
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2,
                  child: OriginalButton(
                      text: 'تسجيل',
                      onPressed: () {},
                      txtColor: Colors.black,
                      bgColor: colorButton),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
