import 'package:flutter/material.dart';

class theme3 extends StatefulWidget {
  @override
  State<theme3> createState() => _theme3();
}

class _theme3 extends State<theme3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme3'),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
