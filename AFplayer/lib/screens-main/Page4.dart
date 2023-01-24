import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/theme1.dart';
import 'package:flutter_application_1/Theme/theme2.dart';
import 'package:flutter_application_1/Theme/theme3.dart';
import 'package:flutter_application_1/Theme/theme5.dart';
import 'package:flutter_application_1/Theme/theme6.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/playing.dart';
import 'package:flutter_application_1/widgets/playlist.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../other-page/Search.dart';
import '../other-page/Setting.dart';

var scaffoldkey = GlobalKey<ScaffoldState>();

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page4> {
  bool t1 = true;
  bool s1 = true;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          key: scaffoldkey,
          drawer: NavegationDrawer(),
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "IranwebSanse",
                    fontWeight: FontWeight.w400,
                  ),
                  "For me"),
              backgroundColor: Palette.primary,
              elevation: 1,
              shadowColor: Colors.grey,
              leadingWidth: 50,
              leading: IconButton(
                  iconSize: 50,
                  color: Color(0xff3c4550),
                  onPressed: () {
                    scaffoldkey.currentState?.openDrawer();
                  },
                  icon: ImageIcon(AssetImage('assets/icons/menu.png'))),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () => setState(() => isVisible = !isVisible),
                      child: const ImageIcon(
                        AssetImage("assets/icons/search.png"),
                        size: 25,
                        color: Color(0xff3c4550),
                      ),
                    )),
              ]),
          body: Container(
            color: Palette.primary,
            child: Column(
              children: [
                if (isVisible)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                    child:
                        SizedBox(height: 40.h, width: 350.w, child: Search()),
                  ),
                SizedBox(
                  height: 10,
                ),
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
                                          builder: ((context) => playlist())));
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
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: 376.3,
                        color: Palette.primary,
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
                    ),
                    const Positioned(
                        bottom: 2, left: 0, right: 0, child: playing())
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
