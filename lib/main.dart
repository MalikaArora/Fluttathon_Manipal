import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:hello/searchbar.dart';
import 'ab5.dart';
import 'kaup.dart';
import 'sp.dart';
import 'ab2.dart';
import 'arbi.dart';
import 'block17.dart';
import 'hoode.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white, //Changing this will change the color of the TabBar
        //accentColor: Colors.cyan[600],
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
    
  ];
  Color _lightgreen = Color(0xff8DCBC8);
  Color _green = Color(0xff4BAEA2);
  Color _darkgreen = Color(0xff26727D);
  Color _darkgrey = Color(0xff9897B1);
  Color _grey = Color(0xffB1B0C8);
  Color _lightgrey = Color(0xffDADADA);
  Color _blue=Color(0xffA1CCF3);
  
  TabController _tabController;
  ScrollController _scrollViewController;
  
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    //       child: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Example App'),
    //       bottom: TabBar(
    //         tabs: <Widget>[
    //           Tab(
    //             text: "Home",
    //             icon: Icon(Icons.home),
    //           ),
    //           Tab(
    //             text: "Example page",
    //             icon: Icon(Icons.help),
    //           )
    //         ],
    //       ),
    //     ),

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
            onTap: onTabTapped, // new
            index: _currentIndex,
            height: 60,
            key: _bottomNavigationKey,
            buttonBackgroundColor: _blue,
            backgroundColor: _blue,
            items: <Widget>[
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              Icon(Icons.home, color: Colors.grey),
              Icon(FontAwesomeIcons.heart, color: Colors.grey),
              Icon(FontAwesomeIcons.user, color: Colors.grey),
              Icon(Icons.settings, color: Colors.grey),
              //Icon(FontAwesomeIcons.user, color: Colors.grey),
            ],
          ),
      //   body: _children[_currentIndex],
      
      drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Malika Arora"),
                    accountEmail: Text("malikaarora2202@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        "M",
                        style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("My collections"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
      body: 
        Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [_blue, Colors.white])),
        
        child: 
        NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title:Column(
                children:<Widget>[
                SizedBox(
                  height: 15
                ),
                Row(children: [
                  Text(
                    'Destination',
                    style: TextStyle(fontFamily: 'Abril-Fatface', fontSize: 40),
                  ),
                  SizedBox(width: 40,),
                Container(
              
              height: 44.0,
              width: 44.0,
              decoration: BoxDecoration(
                
                  borderRadius: BorderRadius.circular(22), //half of 75
                  image: DecorationImage(
                      image: AssetImage('images/profile.jpeg'), fit: BoxFit.cover,)
                      )
          ),])
              ]),
              pinned: true,
              floating: true,
              forceElevated: boxIsScrolled,
              bottom: TabBar(
              indicatorColor: Colors.transparent,
              unselectedLabelColor: _darkgrey,
              labelColor: _blue,
              indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                Tab(
                  // 
                  child: Text(
                        "Popular",
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight:FontWeight.bold,         
                        ),
                      ),
                  //  ),
                 // ),
                ),
                Tab(
                  // 
                  child: Text(
                        "Nearest",
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight:FontWeight.bold,         
                        ),
                      ),
                  //  ),
                 // ),
                ),
                ],
                controller: _tabController,
              ),
              )
          ];
        },
        
        body: 
        TabBarView(
          children: <Widget>[

            PageOne(),
            
            PageOne()
          ],
          controller: _tabController,
        ),
         
        ))),
    );
  }
    void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20
          ),
          //MySearch(),
          Searchb(),
          SizedBox(
            height: 20
          ),
          Row(children: [
            SizedBox(
              width: 15
            ),
            Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new AB5Page(5),
                    ),
                  );
                  },
            child: listItem('images/AB-5.jpg','AB-5', 5),
                  ) )     
              
            ,
            SizedBox(
              width: 20
            ),
                        Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new SPPage(5),
                    ),
                  );
                  },
            child: listItem('images/StudentPlaza.JPG','Student Plaza', 5),
                  ) ) 
            
          ],),

          SizedBox(
            height: 20
          ),
          Row(children: [
            SizedBox(
              width: 15
            ),
            Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new ArbiPage(3),
                    ),
                  );
                  },
            child: listItem('images/Arbi_falls.jpg','Arbi Falls', 5),
                  ) ),
            
            SizedBox(
              width: 20
            ),
             Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new KaupPage(5),
                    ),
                  );
                  },
            child: listItem('images/Kaup_beach.jpg','Kaup Beach', 5),
                  ) )  
            
          ],),

          SizedBox(
            height: 20
          ),
          Row(children: [
            SizedBox(
              width: 15
            ),
            Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new BlockPage(5),
                    ),
                  );
                  },
            child: listItem('images/block17_view_2.jpeg','Block-17 View', 5),
                  ) ),
            
            SizedBox(
              width: 20
            ),
            Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new HoodePage(5),
                    ),
                  );
                  },
            child: listItem('images/Hoode_Beach.jpg','Hoode Beach', 4),
                  ) ),
            
          ],),
          SizedBox
          (height: 20,),
          Row(children: [
            SizedBox(
              width: 15
            ),
            listItem('images/TC.jpg','Tiger Circle', 3),
            SizedBox(
              width: 20
            ),
            listItem('images/NLHRoad.jpeg','NLH', 3),
          ],),
          SizedBox(
            height: 20
          ),
          Row(children: [
            SizedBox(
              width: 15
            ),
            listItem('images/MIT_1.jpeg','MIT', 5),
            SizedBox(
              width: 20
            ),
            listItem('images/Mattubeach.jpg','Mattu Beach', 4),
          ],),
          SizedBox(
            height: 20
          ),
          Row(children: [
            SizedBox(
              width: 15
            ),
            listItem('images/Manipallake.jpg','Manipal Lake', 3),
            SizedBox(
              width: 20
            ),
            listItem('images/Malpebeach.jpg','Malpe Beach', 4),
          ],),
          SizedBox(
            height: 20
          ),
          
          SizedBox(
            height: 20
          ),
          Row(children: [
            SizedBox(
              width: 15
            ),
            listItem('images/Endpoint.jpg','End Point', 4),
            SizedBox(
              width: 20
            ),
            Container (
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {
                  //await Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new AB2Page(3),
                    ),
                  );
                  },
            child: listItem('images/AB2.jpeg','AB-2', 3),
                  ) )  
            ,
            
          ],),
          SizedBox(
            height: 20
          ),
          
        ],
      
    ));
  }

  


}
class Searchb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent.withOpacity(0.3),
                              spreadRadius: 1.0,
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        height: 50,
                        width: 350,
                        child: Center(
                          child:
                          Row(
                            children:[
                              SizedBox(
                                width: 30
                              ),                            
                          Text(
                          "SEARCH YOUR DESTINATION",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
                          ),
                          IconButton(
                          icon:Icon(Icons.search),
                                 onPressed: () {
                                   showSearch(context: context, delegate: DataSearch());
                                 },
                                 iconSize: 20.0,
                                 color: Colors.grey,
                          )
                          ])));
                          // textInputAction: TextInputAction.search,
                          // decoration: InputDecoration(
                          //     hintText: "Search Doctors, Clinic...",
                          //     border: InputBorder.none,
                          //     contentPadding:
                          //         EdgeInsets.only(left: 15.0, top: 15.0),
                          //     suffixIcon: IconButton(
                          //       icon: Icon(Icons.search),
                          //       onPressed: () {},
                          //       iconSize: 30.0,
                          //     )),
                        
  }
}

class DataSearch extends SearchDelegate<String> {
  final places = [
        "AB-2", "AB2", "Academic Block 2", "ab2", "ab 2", "ab-2", "academic block 2",
        "AB-5", "AB5", "Academic Block 5", "ab5", "ab-5", "ab 5","academic block 2",
        "Arbi Falls", "arbi falls", "near arbi falls",
        "Block 17 View", "View", "block 17", "block-17","view",
        "Endpoint", "End-point","end point","enp-point",
        "Hoode Beach","hoode beach",
        "Kaup Beach","Kapu Beach","kaup beach","kapu beach",
        "Malpe Beach","malpe beach",
        "Manipal Lake", "Lake","manipal lake","lake",
        "Mattu Beach","mattu beach",
        "MIT","NLH","mit","nlh",
        "KC","Student Plaza","sp","kc","student plaza",
        "TC","Tiger Circle","tc","tiger circle"
  ];

  final recentplaces = [
    "Malpe Beach",
    "Manipal Lake", "Lake",
    "Mattu Beach",
    "MIT","NLH",
  ];

  String selected;

  @override
  List<Widget> buildActions(BuildContext context) {
      return [
        IconButton(
          icon: Icon(Icons.clear), 
          onPressed: (){
            query="";
          },
        )
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return
        IconButton(
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation,
          ),
          onPressed: (){
            close(context,null);
          }
        
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
      
      if(selected=="AB-2"|| selected=="Academic Block 2"||selected=="ab2"||selected=="ab-2"||selected=="academic block 2")
      return AB2Page(3);
    else
      return AB2Page(3);
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
      ?recentplaces
      :places.where((p) => p.startsWith(query)).toList();

    
    return ListView.builder(
      itemBuilder: (context,index) => ListTile(
        onTap: (){
          selected=suggestionList[index];
          showResults(context);
        },
        
        leading: Icon(Icons.location_city),
        title: RichText(text: TextSpan(
          text: suggestionList[index].substring(0,query.length),
          style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color: Colors.grey))
            
          ]
        )),
      ),
      itemCount: suggestionList.length,
    );
  }

  Widget destinationPage(String q)
  {
    if(q=="Lake")
      return AB5Page(5);
    else
      return AB5Page(5);
  }
}


Widget listItem(String imgPath, String name, int star )  {
  bool check=false;
    return Column(children: <Widget>[
      Stack(
        //bcz to be placed logo on top of image of model
        children: <Widget>[
          Container(
              
              height: 170.0,
              width: 170.0,
              decoration: BoxDecoration(
                
                  borderRadius: BorderRadius.circular(20), //half of 75
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover,)
                      )
          ),
          Positioned(
            bottom: 15,
            left: 10,
            child: Text(
                    name,
                    style: TextStyle(
                      //fontFamily: 'Abril-Fatface', 
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                  ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: 
            IconButton(
              icon: Icon(check?LineAwesomeIcons.heart:FontAwesomeIcons.heart),
              color: Colors.pinkAccent,
              
              iconSize: 20,
              onPressed: () {
                
                  if(check){
                    check = false;
                  }else{
                    check= true;
                  }
              })
              
            ),

          Positioned(
            bottom: 2.0,
            left: 10.0,
            child: Container(
                //height: 25.0,
                // width: 25.0,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12.5), //half of 75
                    child: IconTheme(
                      data: IconThemeData(
                        color: Colors.amber,
                        size: 15,
                      ),
                      child: StarDisplay(value: star),
                    )
            ))  
        ],
        
      ),
      
      // SizedBox(height: 10.0),
      // Container(
      //   height: 30.0,
      //   width: 75.0,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(15.0),
      //       color: Color(0xFF916144)),
      //   child: Center(
      //     child: Text(
      //       'Follow',
      //       style: TextStyle(
      //           fontFamily: 'Montserrat', fontSize: 14.0, color: Colors.white),
      //     ),
      //   ),
      // )
    ]);
  }
  class StarDisplay extends StatelessWidget {
  final int value;  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
Widget _student() {
  return 
      Stack(
        //bcz to be placed logo on top of image of model
        children: <Widget>[
          Image.asset(
            'images/AB-5.jpg',
            width: 200.0,
          ),
         Container(
              // height: 1000.0,
              // width: 300.0,
              decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(37.5), //half of 75
                  image: DecorationImage(
                      image: AssetImage(
                        "images/StudentPlaza2.jpeg",
                        )))),
          // Positioned(
          //   top: 50.0,
          //   left: 50.0,
          //   child: Container(
          //       height: 25.0,
          //       width: 25.0,
          //       // decoration: BoxDecoration(
          //       //     borderRadius: BorderRadius.circular(12.5), //half of 75
          //           child: IconTheme(
          //             data: IconThemeData(
          //               color: Colors.amber,
          //               size: 48,
          //             ),
          //             child: StarDisplay(value: 3),
          //           )
          //   ))  
          ]
      );
}
}