
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AB5Page extends StatefulWidget {
  
  final int star;

  AB5Page(this.star);
  
  @override
  _AB5PageState createState() => _AB5PageState();
}

class _AB5PageState extends State<AB5Page> with TickerProviderStateMixin {

  
  
  Color _lightgreen = Color(0xff8DCBC8);
  Color _darkgreen = Color(0xff26727D);
  Color _darkgrey = Color(0xff9897B1);
  Color _grey = Color(0xffB1B0C8);
  Color _lightgrey = Color(0xffDADADA);
  Color _blue=Color(0xffA1CCF3);
  String kc='Wonderful building that hosts classes of most seniors of MIT. Admittedly very confusing to navigate around, not only the first time, but also after 4 years. Spicy and span and maintained excellently.';
  @override
  Widget build(BuildContext context) {
    String staar=(widget.star).toString();
    return MaterialApp(
        title: "Home Page",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            
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
                    String url='https://www.google.com/maps/place/Student+Plaza/@13.347317,74.7933167,15z/data=!4m2!3m1!1s0x0:0x46057bbeb7e362fc?sa=X&ved=2ahUKEwjq44HXnObrAhVXxzgGHdN7BLYQ_BIwGHoECBcQCA';
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
                    String url='https://www.google.com/maps/search/Restaurants/@13.3473167,74.7933167,15z/data=!3m1!4b1!4m8!2m7!3m6!1sRestaurants!2sStudent+Plaza,+Kamath+Circle+(KC),+Manipal+institute+of+technology,+Manipal,+Karnataka+576104!3s0x3bbca4a59be0298f:0x46057bbeb7e362fc!4m2!1d74.7933167!2d13.347317';
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
                    String url='https://www.google.com/maps/search/Hotels/@13.3473167,74.7933167,15z/data=!3m1!4b1!4m8!2m7!3m6!1sHotels!2sStudent+Plaza,+Kamath+Circle+(KC),+Manipal+institute+of+technology,+Manipal,+Karnataka+576104!3s0x3bbca4a59be0298f:0x46057bbeb7e362fc!4m2!1d74.7933167!2d13.347317';
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
                    'AB-5',
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
                    ' 0 km',
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
        return Container(
        height: 260.0,
        //child: Stack(alignment: AlignmentDirectional.topCenter,
        //overflow: Overflow.visible,
        //children: <Widget>[
        child: Container(
            height: 260.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Stack(alignment: AlignmentDirectional.topCenter,
                //overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset('images/AB-5.jpg',fit: BoxFit.cover,height: 260,
                    )),
                    decoration: BoxDecoration(
                      color: _darkgreen,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  
                ])));
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