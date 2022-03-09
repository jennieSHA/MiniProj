import 'package:flutter/material.dart';
class info extends StatefulWidget {
  @override
  _infoState createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("AppInfo"),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text(""),
      )
    );
  }
}
