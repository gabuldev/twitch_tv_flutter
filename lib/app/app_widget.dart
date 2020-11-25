import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitch_tv/app/modules/login/login_page.dart';

import 'modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF020014),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          primaryColor: Colors.black,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color(0xFF02000F),
              selectedItemColor: Color(0xFF9F7BD4),
              selectedLabelStyle: TextStyle(color: Color(0xFF9F7BD4)),
              selectedIconTheme: IconThemeData(color: Color(0xFF9F7BD4)),
              unselectedItemColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.white),
              unselectedIconTheme: IconThemeData(color: Colors.white))),
      home: HomePage(),
    );
  }
}
