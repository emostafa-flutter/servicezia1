import 'package:flutter/material.dart';

class Profile6 extends StatelessWidget {
  static const routeName = '/Profile6';

  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //==========================================================================================
              // build Top Section of Profile (include : Profile Image)
              //==========================================================================================
              _buildHeader(),

              //==========================================================================================
              // build middle Section of Profile (include : main info  )
              //==========================================================================================
              _buildMainInfo(context,widthC),


              SizedBox(height: 10.0),


              //==========================================================================================
              //  build Bottom Section of Profile (include : email - phone number - about - location )
              //==========================================================================================
              _buildInfo(context,widthC),
            ],
          ),
        ));
  }

  Widget _buildHeader() {
    return Stack(
      children: <Widget>[
        Ink(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.blueAccent,
              Colors.lightBlue,
              Colors.lightBlueAccent,
              Colors.blueGrey,
            ]),

          ),
        ),
        Ink(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 140),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.white,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.blueGrey,
                      Colors.lightBlueAccent,
                      Colors.lightBlue,
                      Colors.blueAccent,

                    ]),
                  ),
                  child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular( 85),
                        child: Image.network('https://i.picsum.photos/id/291/200/200.jpg',width: 85,height: 85,fit: BoxFit.fill)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }


  Widget _buildMainInfo(BuildContext context,double width){
    return Container(
      width: width,
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.center,
      child: Column(
        children: <Widget>[
          Text('Lorem Ipsum',style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('Flutter',style: TextStyle(color: Colors.blue))
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context,double width){
    return Container(
        padding: EdgeInsets.all(10),
        child:   Card(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[


                    ListTile(
                      leading: Icon(Icons.email,color: Colors.blue),
                      title: Text("E-Mail"),
                      subtitle: Text("email@gmailc.com"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone,color: Colors.blue),
                      title: Text("Phone Number"),
                      subtitle: Text("11-111111-11"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.person,color: Colors.blue),
                      title: Text("About"),
                      subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      leading: Icon(Icons.my_location,color: Colors.blue),
                      title: Text("Location"),
                      subtitle: Text("Canada"),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}