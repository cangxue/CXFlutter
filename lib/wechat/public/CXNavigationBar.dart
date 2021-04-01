import 'package:flutter/material.dart';

class CXNavigationBar {
  final BottomNavigationBarItem item;

  final String title;
  final String normal_icon;
  final String selected_icon;

  CXNavigationBar({
    @required this.title,
    @required this.normal_icon,
    @required this.selected_icon,
  }) : item = BottomNavigationBarItem(
            icon: Image.asset(
              normal_icon,
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              selected_icon,
              width: 24,
              height: 24,
            ),
            title: Text(title));
}
