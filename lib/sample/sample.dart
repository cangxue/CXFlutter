import 'package:CXFlutter/sample/MyFadeTest.dart';
import 'package:CXFlutter/sample/SampleAppPage.dart';
import 'package:flutter/material.dart';

class SampleApp extends StatefulWidget {
  SampleApp({Key key}) : super(key: key);

  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      home: MyFadeTest(title: 'Fade Demo'),
    );
  }
}
