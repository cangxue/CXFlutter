import 'package:CXFlutter/wechat/mine/MineScreen.dart';
import 'package:flutter/material.dart';

class WeChatApp extends StatefulWidget {
  WeChatApp({Key key}) : super(key: key);

  @override
  _WeChatAppState createState() => _WeChatAppState();
}

class _WeChatAppState extends State<WeChatApp> {
  final List<Widget> _children = [
    MineScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[0],
    );
  }
}
