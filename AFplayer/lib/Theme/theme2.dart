import 'package:flutter/material.dart';

class theme2 extends StatefulWidget {
  @override
  State<theme2> createState() => _theme2();
}

class _theme2 extends State<theme2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme2'),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
