import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/theme1.dart';
import 'package:flutter_application_1/Theme/theme2.dart';
import 'package:flutter_application_1/Theme/theme3.dart';
import 'package:flutter_application_1/Theme/theme4.dart';
import 'package:flutter_application_1/Theme/theme5.dart';
import 'package:flutter_application_1/Theme/theme6.dart';
import 'package:flutter_application_1/widgets/playing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Search.dart';
import 'Setting.dart';

const primaryColor = Color(0xff1c1e25);

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page4> {
  bool t1 = true;
  bool s1 = true;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "IranwebSanse",
                    fontWeight: FontWeight.w400,
                  ),
                  "For me"),
              backgroundColor: primaryColor,
              elevation: 1,
              shadowColor: Colors.grey,
              leadingWidth: 50,
              leading: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        s1 = true;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Setting())));
                      });
                    },
                    child: const ImageIcon(
                      AssetImage("assets/icons/menu.png"),
                      size: 25,
                      color: Color(0xff3c4550),
                    ),
                  )),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          s1 = true;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Search())));
                        });
                      },
                      child: const ImageIcon(
                        AssetImage("assets/icons/search.png"),
                        size: 25,
                        color: Color(0xff3c4550),
                      ),
                    )),
              ]),
          body: Container(
            color: primaryColor,
            child: Column(
              children: [
                Container(
                  height: 145.h,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: const Text(
                          "Dark Mode",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "IranwebSanse",
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Kevin Obrien Studio Art Furniture House',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "IranwebSanse",
                              fontWeight: FontWeight.w400,
                              color: Color(0xff63697c)),
                        ),
                      ),
                      SizedBox(
                        height: 75,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thems/theme1.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => theme1())));
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thems/theme2.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => theme2())));
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thems/theme3.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => theme3())));
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 145.h,
                  color: Color(0xff23272f),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: const Text(
                          "Light Mode",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "IranwebSanse",
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Kevin Obrien Studio Art Furniture House',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "IranwebSanse",
                              fontWeight: FontWeight.w400,
                              color: Color(0xff63697c)),
                        ),
                      ),
                      SizedBox(
                        height: 75,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thems/theme4.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => theme4())));
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thems/theme5.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => theme5())));
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thems/theme6.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => theme6())));
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(children: [
                    Container(
                      height: 376.3,
                      color: primaryColor,
                      child: Expanded(
                        child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 100, left: 65, right: 65),
                            child: Image(
                              image: AssetImage(
                                "assets/images/Tablighat.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                        bottom: 5, left: 8, right: 8, child: playing())
                  ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
