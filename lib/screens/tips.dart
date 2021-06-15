import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'auth_screen.dart';
import 'config.dart';
import 'originalbutton.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  final key = GlobalKey<PageContainerState>();

  List<String> images = [
    'assets/images/logo.png',
    'assets/images/logo.png',
    'assets/images/logo.png',
  ];
  List<String> titles = ['التمريض', 'سيرفيزيا', 'التمريض'];
  List<String> infos = [
    'يوفر التطبيق خدمة التمريض وطلبه فى اى وقت وذلك بشكل منظم للحفاظ على الرعاية الصحية المطلوبة',
    'تطبيق الكترونى رائد لتسهيل الحصول على خدمات الصيانة المنزلية وأعمال البناء فى أقل من دقيقة',
    'يوفر التطبيق خدمة التمريض وطلبه فى اى وقت وذلك بشكل منظم للحفاظ على الرعاية الصحية المطلوبة',
  ];

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 2;
    return Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: myheight,
                  child: PageIndicatorContainer(
                      shape: IndicatorShape.circle(size: 50),
                      align: IndicatorAlign.bottom,
                      indicatorColor: Colors.black,
                      child: PageView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, index) {
                          return SingleTips(
                            images: images[index],
                            titles: titles[index],
                            infos: infos[index],
                          );
                        },
                      ),
                      length: null),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: OriginalButton(
                      text: 'تخطى',
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return AuthScreen();
                            },
                          ),
                        );
                      },
                      txtColor: Colors.black,
                      bgColor: colorButton),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String images;
  final String titles;
  final String infos;

  const SingleTips({Key key, this.images, this.titles, this.infos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  images,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                titles,
                style: TextStyle(
                    fontFamily: 'PNU',
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                infos,
                style: TextStyle(
                  fontFamily: 'PNU',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
