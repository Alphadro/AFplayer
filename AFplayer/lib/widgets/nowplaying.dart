import 'package:flutter/material.dart';

class NoPlaying extends StatefulWidget {
  @override
  State<NoPlaying> createState() => _NoPlaying();
}

class _NoPlaying extends State<NoPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      )),
    );
  }
}
