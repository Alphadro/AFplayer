import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/playing.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Page3.dart';
import 'Search.dart';
import 'Setting.dart';

const primaryColor = Color(0xff1c1e25);

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page1> {
  bool t1 = false;
  bool s1 = false;

  List<String> Music = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
              backgroundColor: primaryColor,
              appBar: AppBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "IranwebSanse",
                          fontWeight: FontWeight.w400,
                        ),
                        "Filter"),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "IranwebSanse",
                          fontWeight: FontWeight.w400,
                        ),
                        "Arrange"),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "IranwebSanse",
                          fontWeight: FontWeight.w400,
                        ),
                        "View"),
                  ],
                ),
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
                ],
              ),
              body: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
                  child: Container(
                    color: primaryColor,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 14,
                      childAspectRatio: 2 / 2.5,
                      crossAxisSpacing: 7,
                      children: List<Widget>.generate(Music.length, ($index) {
                        return Card(
                            elevation: 0,
                            clipBehavior: Clip.hardEdge,
                            color: primaryColor,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Positioned(
                                top: 0,
                                height: 90.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/cover_img.png'),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Page3()));
                                },
                              ),
                              const Positioned(
                                top: 2,
                                left: 5,
                                child: ImageIcon(
                                  AssetImage("assets/icons/folder.png"),
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const Positioned(
                                top: 2,
                                right: 5,
                                child: ImageIcon(
                                  AssetImage("assets/icons/menu.png"),
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                bottom: 11,
                                child: Text(
                                  'Like it Doesnt Hurt',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontFamily: "IranwebSanse",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Text(
                                    'Danito & Athina',
                                    style: TextStyle(
                                      color: Color(0xff3c4550),
                                      fontSize: 8.sp,
                                      fontFamily: "IranwebSanse",
                                      fontWeight: FontWeight.w200,
                                    ),
                                  )),
                            ]));
                      }),
                    ),
                  ),
                ),
                const Positioned(bottom: 5, left: 8, right: 8, child: playing())
              ]));
        });
  }
}
