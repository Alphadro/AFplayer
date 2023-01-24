import 'package:flutter/material.dart';
import '../home_page.dart';

class IntroPage3 extends StatefulWidget {
  @override
  _OBScreenState3 createState() => _OBScreenState3();
}

class _OBScreenState3 extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              //=> Background Linear Gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffb5e48c),
                Color(0xff34a0a4),
                Color(0xff1a759f),
                Color(0xff184e77),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color(0xffffffff),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Color(0xff184e77),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Homepage {}
