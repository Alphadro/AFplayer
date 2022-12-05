import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _settingpage();
}

class _settingpage extends State<settingpage> {
  @override
  Widget build(BuildContext context) => Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("setting"),
        centerTitle: true,
      ));
}
