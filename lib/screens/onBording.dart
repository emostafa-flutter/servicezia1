import 'package:firstapp/screens/Slide.dart';
import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'config.dart';
import 'originalbutton.dart';

class BoardningPage extends StatefulWidget {
  @override
  _BoardningPageState createState() => _BoardningPageState();
}

class _BoardningPageState extends State<BoardningPage> {
  int _currentPage = 0;
  List<Slide> _slides= [];
  PageController _pageController= PageController();

  @override
  void initState() {
    _currentPage = 0;
    _slides = [
      Slide('assets/images/logo.png', 'التمريض',
          'يوفر التطبيق خدمة التمريض وطلبه فى اى وقت وذلك بشكل منظم للحفاظ على الرعاية الصحية المطلوبة'),
      Slide('assets/images/logo.png', 'سيرفيزيا',
          'تطبيق الكترونى رائد لتسهيل الحصول على خدمات الصيانة المنزلية وأعمال البناء فى أقل من دقيقة'),
      Slide('assets/images/logo.png', 'التمريض',
          'يوفر التطبيق خدمة التمريض وطلبه فى اى وقت وذلك بشكل منظم للحفاظ على الرعاية الصحية المطلوبة')
    ];

    _pageController = PageController(initialPage: _currentPage);
  }

  List<Widget> _buildSlides() {
    return _slides.map(_buildSlide).toList();
  }

  Widget _buildSlide(Slide slide) {
        double myheight = MediaQuery.of(context).size.height / 2;

    return Scaffold(
          body:  Stack(
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
                  child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  slide.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                slide.title,
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
                slide.info,
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

  void _handlingOnPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  Widget _buildPageIndicator (){
    Row row = Row(mainAxisAlignment: MainAxisAlignment.center,children: [],);
    for ( int i = 0 ; i < _slides.length;i++){
      row.children.add(_buildPageIndicatorItem(i));
      if(i != _slides.length - 1)
      row.children.add(SizedBox(width: 12,));
    }
    return row;
  }

  Widget _buildPageIndicatorItem(int index){
    return Container(
      width: index == _currentPage ? 11 : 8 ,
      height: index == _currentPage ? 11 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _currentPage
        ? Colors.black
        : Colors.grey
      ),

    );

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _handlingOnPageChanged,
            physics: BouncingScrollPhysics(),
            children: _buildSlides(),
          ),

          Positioned(left: 0, right: 0,bottom: 15,child: Column(children: [
            _buildPageIndicator(),
          ],),)
        ],
      ),
    );
  }
}
