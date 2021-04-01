import 'package:CXFlutter/wechat/contact/ContactScreen.dart';
import 'package:CXFlutter/wechat/find/FindScreen.dart';
import 'package:CXFlutter/wechat/message/MessageScreen.dart';
import 'package:CXFlutter/wechat/mine/MineScreen.dart';
import 'package:CXFlutter/wechat/public/CXNavigationBar.dart';
import 'package:flutter/material.dart';

class WeChatApp extends StatefulWidget {
  WeChatApp({Key key}) : super(key: key);

  @override
  _WeChatAppState createState() => _WeChatAppState();
}

class _WeChatAppState extends State<WeChatApp> {
  var _currentIndex = 0;
  List titles = ['消息', '通讯录', '发现', '我的'];
  List selected_icons = [
    'assets/images/invite_selected.png',
    'assets/images/manager_selected.png',
    'assets/images/discovery_selected.png',
    'assets/images/mine_selected.png',
  ];
  List normal_icons = [
    'assets/images/invite_normal.png',
    'assets/images/manager_normal.png',
    'assets/images/discovery_normal.png',
    'assets/images/mine_normal.png',
  ];
  List<CXNavigationBar> _navigationList;

  final List<Widget> _children = [
    MessageScreen(),
    ContactScreen(),
    FindScreen(),
    MineScreen(),
  ];
  @override
  void initState() {
    super.initState();
    _navigationList = [
      for (var i = 0; i < _children.length; i++)
        CXNavigationBar(
            title: titles[i],
            selected_icon: selected_icons[i],
            normal_icon: normal_icons[i])
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _navigationList.map((view) => view.item).toList(),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
