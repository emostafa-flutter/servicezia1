import 'package:firstapp/screens/auth/txtFieldRegister.dart';
import 'package:flutter/material.dart';
import '../config.dart';
import '../originalbutton.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterProvider extends StatefulWidget {
  @override
  _RegisterProviderState createState() => _RegisterProviderState();
}

class _RegisterProviderState extends State<RegisterProvider> {
  TextEditingController NameController = TextEditingController(),
      PasswordController = TextEditingController(),
      EmailController = TextEditingController(),
      PhoneController = TextEditingController(),
      LocationController = TextEditingController(), CraftsID = TextEditingController();
  String dropdownValue; 

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
                  textEditingController: NameController,
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.email),
                  txtHin: 'البريد الالكترونى',
                  txtlabel: 'ادخل بريدك الالكترونى',
                  textEditingController: EmailController,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: primeryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 0,
                      color: Colors.black,
                    ),
                    onChanged: (String newValue) {
                      setState(
                        () {
                          dropdownValue = newValue;
                          print(newValue);
                        },
                      );
                    },
                    hint: Text(
                      'اختر حرفتك',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    items: <String>[
                      'نجار',
                      'حداد',
                      'تمريض',
                      'كهربائى',
                      'سباك',
                      'محاضرة'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.place),
                  txtHin: 'المحافظة/المدينة',
                  txtlabel: 'ادخل اسم المدينة والمحافظة المقيم بها',
                  textEditingController: LocationController,
                ),
                SizedBox(
                  height: 20,
                ),
                TxtFieldRegsiter(
                  icon: Icon(Icons.lock),
                  txtHin: 'كلمة المرور',
                  txtlabel: 'أدخل كلمة المرور',
                  textEditingController: PasswordController,
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
                  textEditingController: PhoneController,
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2,
                  child: OriginalButton(
                      text: 'تسجيل',
                      onPressed: SendDataRegisterUserApi,
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

  SendDataRegisterUserApi() async {
    http.Response res = await http.post(
      Uri.parse('http://192.168.1.200/craftsmen/api/register-provider.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'name': NameController.text,
          'email': EmailController.text,
          'password': PasswordController.text,
          'phone': PhoneController.text,
          'city': LocationController.text,
        },
      ),
    );
    print(
        '-----------------------------------------------------------------------------------------------');
    print(res.body.toString());
  }
}
