import 'package:flutter/material.dart';

class SapmleAppPage extends StatefulWidget {
  SapmleAppPage({Key key}) : super(key: key);

  @override
  _SapmleAppPageState createState() => _SapmleAppPageState();
}

class _SapmleAppPageState extends State<SapmleAppPage> {
  String textToShow = 'I Like Flutter';
  void _updateText() {
    setState(() {
      textToShow = 'Flutter is Awesome!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: Text(textToShow),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
