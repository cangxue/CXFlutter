import 'package:flutter/material.dart';

class MineScreen extends StatefulWidget {
  MineScreen({Key key}) : super(key: key);

  @override
  _MineScreenState createState() => _MineScreenState();
}

class _MineScreenState extends State<MineScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text(
        'Hello, world',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
