import 'package:flutter/material.dart';
import 'package:happyeat/login/login.dart';
import 'package:happyeat/pages/homepage/main_home_page.dart';
import 'package:happyeat/pages/my_page/my_page.dart';
import 'package:happyeat/pages/search_page/search_page.dart';
import 'package:happyeat/pages/setting_page/setting_page.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:happyeat/login/kakao_login/view_model.dart';

import '../../../login/kakao_login/kakao_login.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  bool _isLoggedIn = false;
  final viewModel = ViewModel(KakaoLogin());



  final List<Widget> _children = [
    MainHomePage(),
    SearchPage(),
    Login(),
    SettingPage()
  ];

  @override
  void initState(){
    super.initState();
    if(viewModel.isLogined == true){
      _isLoggedIn = true;
    }
    if(_isLoggedIn == true){
      _children[2] = MyPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,

        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    if (index == 2 && !_isLoggedIn) {
      // If the user taps MyPage and is not logged in, switch to LoginPage
      setState(() {
        _children[2] = Login();
        _currentIndex = 2;
      });
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
