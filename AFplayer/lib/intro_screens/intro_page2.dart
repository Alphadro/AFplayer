import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  @override
  _OBScreenState2 createState() => _OBScreenState2();
}

class _OBScreenState2 extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 130),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 220,
                    height: 185,
                    child: Image(
                      image: AssetImage("assets/images/intro2.png"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Afghanistan player",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20,
                      fontFamily: "seguiBB",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ",
                      style: TextStyle(
                        fontFamily: "seguiL",
                        color: Color(0xffffffff),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
