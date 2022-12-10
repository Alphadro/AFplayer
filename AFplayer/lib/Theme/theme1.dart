import 'package:flutter/material.dart';

class theme1 extends StatefulWidget {
  @override
  State<theme1> createState() => _theme1();
}

class _theme1 extends State<theme1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme1'),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
