import 'package:flutter/material.dart';
import 'package:flutter_application_1/page1.dart';

import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _homepage createState() => _homepage();
}

class _homepage extends State<HomePage> {
  int selectedPage = 2;
  final _pageNo = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
