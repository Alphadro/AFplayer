import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'onboarding_screen.dart';
import 'package:is_first_run/is_first_run.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? _isFirstRun;
  void _checkFirstRun() async {
    bool ifr = await IsFirstRun.isFirstRun();
    setState(() {
      _isFirstRun = ifr;
    });
  }

  Widget build(BuildContext context) {
    _checkFirstRun();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _isFirstRun == true ? OnBoardingScreen() : HomePage(),
    );
  }
}
