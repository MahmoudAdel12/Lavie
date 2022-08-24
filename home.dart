import 'package:flutter/material.dart';
import 'package:login/Data/products/Data.dart';
import 'package:login/Data/products/Product.dart';
import 'package:login/Data/sign_up_data/AuthResponse.dart';
import 'package:login/blogs.dart';
import 'package:login/cart.dart';
import 'package:login/dio_helper.dart';
import 'package:login/scan_screen.dart';
import 'package:login/basepage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Notification.dart';
import 'profile_screen.dart';



class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return HomeState();
  }
}
class HomeState extends State<Home> {
  int gardeniaNum = 1;
  int spiderPlanetNum = 1 ;

  List<Icon> iconList =
  [
    Icon(Icons.eco_outlined),
    Icon(Icons.crop_free),
    Icon(Icons.notifications_none_rounded),
    Icon(Icons.person_outline)
  ];
  int _buttomNavIndex = 2;
  final List<Widget> _widgetOptions = const [
    Blogs(),
    ScanPage(),
    BasePage(),
    NotificationPage(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      primary: false,

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade100,
        height: 60,
        items: const [Icon(Icons.eco_outlined),
          Icon(Icons.crop_free),
          Icon(Icons.home),
          Icon(Icons.notifications_none_rounded),
          Icon(Icons.person_outline)],
        onTap: (index) {
          //Handle button tap
          setState((){
            _buttomNavIndex = index;
          });
        },
      ),
      body: _widgetOptions[_buttomNavIndex],
    );
  }
}