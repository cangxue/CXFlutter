import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ASyncTest extends StatefulWidget {
  ASyncTest({Key key}) : super(key: key);

  @override
  _ASyncTestState createState() => _ASyncTestState();
}

class _ASyncTestState extends State<ASyncTest> {
  List widgets = [];

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (BuildContext content, int position) {
            return getRow(position);
          }),
    );
  }

  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("Row ${widgets[i]["title"]}"),
    );
  }

  loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = json.decode(response.body);
    });
  }
}
