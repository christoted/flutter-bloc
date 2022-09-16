
import 'package:flutter/material.dart';
import 'package:grow_now_clone/constant.dart';
import 'package:grow_now_clone/screens/bottom-navigation/bottom_nav_main.dart';
import 'package:grow_now_clone/screens/home/home.dart';
import 'package:grow_now_clone/screens/login/login.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case rootRoute: 
        
        return MaterialPageRoute(builder: (_) => BottomNavMain());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}