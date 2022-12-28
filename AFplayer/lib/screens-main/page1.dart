import 'package:flutter/material.dart';
import 'package:flutter_application_1/other-page/Album.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/playing.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Page3.dart';
import '../other-page/Search.dart';
import '../other-page/Setting.dart';

var scaffoldkey = GlobalKey<ScaffoldState>();

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
              key: scaffoldkey,
              drawer: NavegationDrawer(),
              backgroundColor: Palette.primary,
              appBar: AppBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PopupMenuButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Colors.white.withOpacity(0.1),
                        child: Text(
                          'Filter',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By Adding Time',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By Name',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By A-Z',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                          ];
                        }),
                    SizedBox(
                      width: 18,
                    ),
                    PopupMenuButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Colors.white.withOpacity(0.1),
                        child: Text(
                          'Arrange',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By Song',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By Artist',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By Album',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => PageAlbum())));
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'By Folder',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                          ];
                        }),
                    SizedBox(
                      width: 18,
                    ),
                    PopupMenuButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Colors.white.withOpacity(0.1),
                        child: Text(
                          'View',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Medume Card',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Big Card',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                            PopupMenuItem(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'List',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  print('yes');
                                });
                              },
                            ),
                          ];
                        }),
                  ],
                ),
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
                    color: Palette.primary,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 14,
                      childAspectRatio: 2 / 2.5,
                      crossAxisSpacing: 7,
                      children: List<Widget>.generate(Music.length, ($index) {
                        return Card(
                            elevation: 0,
                            clipBehavior: Clip.hardEdge,
                            color: Palette.primary,
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
                              Positioned(
                                top: 4,
                                left: 7,
                                child: ImageIcon(
                                  AssetImage("assets/icons/circlemusic.png"),
                                  size: 15,
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                              Positioned(
                                top: 2,
                                right: 3,
                                child: PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                    color: Colors.white.withOpacity(0.1),
                                    child: ImageIcon(
                                      AssetImage('assets/icons/menu.png'),
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    itemBuilder: (BuildContext context) {
                                      return [
                                        PopupMenuItem(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            'Delete Music',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "IranwebSanse",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              print('yes');
                                            });
                                          },
                                        ),
                                        PopupMenuItem(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            'Add to Play List',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "IranwebSanse",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              print('yes');
                                            });
                                          },
                                        ),
                                        PopupMenuItem(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            'Share Music',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "IranwebSanse",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              print('yes');
                                            });
                                          },
                                        ),
                                      ];
                                    }),
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
