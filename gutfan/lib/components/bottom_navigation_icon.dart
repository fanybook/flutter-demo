import 'package:flutter/material.dart';

class NavigationIconView {
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, String title, Widget icon, Widget activeIcon}) :
    item = BottomNavigationBarItem(
      title: Text(title),
      icon: icon,
      activeIcon: activeIcon,
      backgroundColor: Colors.white,
    );
}