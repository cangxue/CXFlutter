import 'package:CXFlutter/wechat/mine/MineScreen.dart';
import 'package:flutter/material.dart';

class WeChat extends StatefulWidget {
  WeChat({Key key}) : super(key: key);

  @override
  _WeChatState createState() => _WeChatState();
}

class _WeChatState extends State<WeChat> {
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
