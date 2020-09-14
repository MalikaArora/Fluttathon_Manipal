
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';



class ArbiPage extends StatefulWidget {
  //const DetailsPage({Key key, this.animationController}) : super(key: key);
  
  final int star;

  ArbiPage(this.star);
  //final AnimationController animationController;
  @override
  _ArbiPageState createState() => _ArbiPageState();
}

class _ArbiPageState extends State<ArbiPage> with TickerProviderStateMixin {

  
  
  Color _lightgreen = Color(0xff8DCBC8);
  Color _green = Color(0xff4BAEA2);
  Color _darkgreen = Color(0xff26727D);
  Color _darkgrey = Color(0xff9897B1);
  Color _grey = Color(0xffB1B0C8);
  Color _lightgrey = Color(0xffDADADA);
  Color _blue=Color(0xffA1CCF3);
  String kc="Arbi Falls also known as Bandaaje Arbi Falls is located in the Charmadi section of the Western Ghats near Manipal. The hilly terrain of the place carves out a pavement so that the rainwater can flow downhill creating a picturesque waterfall. A seasonal waterfall, Arbi comes to life only during the monsoon. Flowing from the hill near the Durga Temple, you have to walk for half a km from Dasharath Nagar to reach the falls. ";
  @override
  Widget build(BuildContext context) {
    String staar=(widget.star).toString();
    return MaterialApp(
        title: "Home Page",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Malika Arora"),
                    accountEmail: Text("malikaarora2202@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).platform == TargetPlatform.android
                              ? Colors.white
                              : Colors.white,
                      child: Text(
                        "M",
                        style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("Book an Appointment"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    title: Text("Diagnostic Test"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
                child: Container(
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.centerLeft,
              //         end: Alignment.centerRight,
              //         colors: [mainBgColor, Colors.white])),
              //color: _lightgrey,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      overflow: Overflow.visible,
                      children: <Widget>[
                        _backBgCover(),
                        _greetings(),
                        _moodsHolder(),
                        
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            _destinationdetail(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))));
  }

  Container _destinationdetail() {
    return Container(
      
      child: Column(
      
      children:[
        SizedBox(
          height: 30
        ),
        Text(
          kc,
          style: TextStyle(
              fontSize: 15,
              //fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
        ),
        SizedBox(
          height: 30
        ),
        
        Row(
          children:[
            SizedBox(
              width: 15
            ),
          Container(
            width: 150.0,
            height: 100.0,
            child :
            RaisedButton(
              hoverElevation: 2,
              color: Color(0XFFA1CCF3),
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Color(0XFFA1CCF3))
                ),
                onPressed: () {
                  launchMap({String lat = "13.347317", String long = "74.7933167"}) async{
                    var mapSchema = 'geo:$lat,$long';
                    String url='https://www.google.com/maps/place/Arbi+Falls/@13.2291222,74.8140845,10z/data=!4m8!1m2!2m1!1sarbi+falls!3m4!1s0x3bbca4b9b902bfe3:0x9e3b0f413701a350!8m2!3d13.336749!4d74.793512';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $mapSchema';
                    }
                  }
                  launchMap();
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                
                  child:
                  Column(
                    children:[
                      IconButton(
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          LineAwesomeIcons.map_pin,
                          color: Colors.white,
                          size: 36,
                        ),
                        onPressed: null),
                      const Text('Start Tour', 
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: "Abril-Fatface")),
                    ])),

          ),
          SizedBox(
            width:20
          ),
                    Container(
            width: 150.0,
            height: 100.0,
            child :
            RaisedButton(
              hoverElevation: 2,
              color: Color(0XFFA1CCF3),
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Color(0XFFA1CCF3))
                ),
                onPressed: () {
                  _launchURL() async {
                    const url = 'http://www.manipal.edu/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                  _launchURL();
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                
                  child:
                  Column(
                    children:[
                      IconButton(
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          LineAwesomeIcons.globe,
                          color: Colors.white,
                          size: 36,
                        ),
                        onPressed: null),
                      const Text('Visit Website', 
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: "Abril-Fatface")),
                    ])),

          ),
          ]),
          SizedBox(
            height: 20
          ),
          Row(
          children:[
            SizedBox(
              width: 15
            ),
          Container(
            width: 150.0,
            height: 100.0,
            child :
            RaisedButton(
              hoverElevation: 2,
              color: Color(0XFFA1CCF3),
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Color(0XFFA1CCF3))
                ),
                onPressed: () {
                  launchMap({String lat = "13.347317", String long = "74.7933167"}) async{
                    var mapSchema = 'geo:$lat,$long';
                    String url='https://www.google.com/maps/search/Restaurants/@13.2291222,74.8140845,10z/data=!4m8!2m7!3m6!1sRestaurants!2sArbi+Falls,+Dasharath+Nagar,+Manipal,+Karnataka+576104!3s0x3bbca4b9b902bfe3:0x9e3b0f413701a350!4m2!1d74.793512!2d13.336749';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $mapSchema';
                    }
                  }
                  launchMap();
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                
                  child:
                  Column(
                    children:[
                      IconButton(
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.fastfood,
                          //LineAwesomeIcons.,
                          color: Colors.white,
                          size: 36,
                        ),
                        onPressed: null),
                      const Text('Food & Desert', 
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: "Abril-Fatface")),
                    ])),

          ),
          SizedBox(
            width:20
          ),
                    Container(
            width: 150.0,
            height: 100.0,
            child :
            RaisedButton(
              hoverElevation: 2,
              color: Color(0XFFA1CCF3),
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Color(0XFFA1CCF3))
                ),
                onPressed: () {
                  launchMap({String lat = "13.347317", String long = "74.7933167"}) async{
                    var mapSchema = 'geo:$lat,$long';
                    String url='https://www.google.com/maps/search/Hotels/@13.2291222,74.8140845,10z/data=!4m8!2m7!3m6!1sHotels!2sArbi+Falls,+Dasharath+Nagar,+Manipal,+Karnataka+576104!3s0x3bbca4b9b902bfe3:0x9e3b0f413701a350!4m2!1d74.793512!2d13.336749';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $mapSchema';
                    }
                  }
                  launchMap();
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                
                  child:
                  Column(
                    children:[
                      IconButton(
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          LineAwesomeIcons.hotel,
                          color: Colors.white,
                          size: 36,
                        ),
                        onPressed: null),
                      const Text('Hotels', 
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: "Abril-Fatface")),
                    ])),

          ),
          ])
        ]
    ));
  }

  
  Positioned _moodsHolder() {
    return Positioned(
        bottom: -50,
        child: Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width - 60,
          //padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,

              // gradient: redGradient,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5.5,
                  blurRadius: 5.5,
                )
              ]),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10
                ),
                Text(
                    'Arbi Falls',
                    style: TextStyle(fontFamily: 'Abril-Fatface', fontSize: 35),
                  ),
                  SizedBox(
                    height: 8
                  ),
                Align(
                  alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 80
                    ),
                    Icon(
                      //Icons.calendar_today,
                      LineAwesomeIcons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Text(
                    " "+(widget.star).toString()+"  ",
                    style: TextStyle(
                      fontSize: 15,
                      color: _darkgrey),
                    ),
                    SizedBox(
                      width: 10
                    ),
                    Icon(
                      //Icons.calendar_today,
                      LineAwesomeIcons.cloud,
                      color: Colors.blueGrey,
                      size: 15,
                    ),
                    Text(
                    ' 28\u00b0C ',
                    style: TextStyle(
                      fontSize: 15,
                      color: _darkgrey),
                    ),
                    
                    SizedBox(
                      width: 10
                    ),
                    Icon(
                      //Icons.calendar_today,
                      LineAwesomeIcons.car,
                      color: _darkgrey,
                      size: 17,
                    ),
                    Text(
                    ' 2.8 km',
                    style: TextStyle(
                      fontSize: 15,
                      color: _darkgrey),
                    ),
                    SizedBox(
                      width: 10
                    ),
                  ]
                )),
              ]
            ),
          )
            )
        );
    
  }


  Container _backBgCover() {
    int _currentIndex=0;
    List welcomeImages=[
    listItem('images/Arbi_falls.jpg'),
    listItem('images/neararbifalls.jpg'),
  ];
  
  
    return Container(
        height: 300.0,
        child: Stack(alignment: AlignmentDirectional.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
        //child: Container(
            //height: 0.0,
            // decoration: BoxDecoration(
                
            //       borderRadius: BorderRadius.circular(20), //half of 75
        Column(
          children:[
          
          CarouselSlider(
          //items: welcomeImages,
          options: CarouselOptions(
          height:300.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          //pauseAutoPlayOnTouch: Duration(seconds: 10),
          aspectRatio: 2.0,
          onPageChanged: (index, reason) {
            _currentIndex=index;
          },
          // onPageChanged: (index) {
          //       //setState(() {
          //         _currentIndex = index;
          //       //});
          //     },
          ),
          items: welcomeImages.map((card){
            return Builder(
              builder:(BuildContext context){
                return card;
              }
            );
          //items: welcomeImages
          }).toList(),
        ),
        
          ])]));
  }

  Positioned _greetings() {
    return Positioned(
        left: 20,
        //bottom: 40,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.white.withOpacity(0.1),
                            highlightColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onTap: () {
                              Navigator.pop(context);
                              },
                            child: Center(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
           
              
            ]));
  }
  
}
class MapUtils {

  MapUtils._();

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
Widget listItem(String imgPath) {
    return Column(children: <Widget>[
      Stack(
        //bcz to be placed logo on top of image of model
        children: <Widget>[
          Container(
              
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                
                  borderRadius: BorderRadius.circular(20), //half of 75
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover,)
                      )
          ),
          
        ],
        
      ),

    ]);
  }
  class Drawhorizontalline extends CustomPainter {
  Paint _paint;

  Drawhorizontalline() {
    _paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
      canvas.drawLine(Offset(-180.0, 0.0), Offset(180.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}