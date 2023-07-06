import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_peach/screens/main/nav_pages/list_page.dart';
import 'package:project_peach/screens/start/start_screen.dart';

import 'nav_pages/chat_page.dart';
import 'nav_pages/home_page.dart';
import 'nav_pages/like_page.dart';
import 'nav_pages/user_page.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
 _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;
  var _bottomNavIndex = 0; //default index of a first screen

  final List<Widget> _widgetOptions = [
    HomePage(),
    ListPage(),
    LikePage(),
    ChatPage(),
    UserPage(),
  ];

  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_3_sharp,
    Icons.brightness_6,
    Icons.brightness_7,
  ];


  @override
  void initState(){
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser(){
    try {
      final user = _authentication.currentUser;
      if (user != null) {
        if(!user.emailVerified){
          Navigator.pop(context);
        }
        loggedUser = user;
        print(loggedUser!.email);
      }
    } catch (e){
      print(e);
    }
  }

  Future<bool> _onWillPop() async {
    _authentication.signOut();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => StartPage()),
          (route) => false,
    );
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SafeArea(
          child: _widgetOptions.elementAt(_bottomNavIndex),
        ),
        // bottom navigation 선언
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          height: 64,
          activeIndex: _bottomNavIndex,
          backgroundColor: Colors.white,
          activeColor : Color(0xFFFFA19B),
          inactiveColor : Colors.grey,
          gapLocation: GapLocation.none,
          onTap: (index) => setState(() => _bottomNavIndex = index,
          ),
        ),
      ),
    );
  }
}