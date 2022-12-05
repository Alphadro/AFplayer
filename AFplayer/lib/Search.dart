import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) => Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Search"),
        centerTitle: true,
      ));
}
