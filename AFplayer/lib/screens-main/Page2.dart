import 'package:flutter/material.dart';
import 'package:flutter_application_1/other-page/Album.dart';
import 'package:flutter_application_1/screens-main/Page3.dart';
import 'package:flutter_application_1/other-page/Setting.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/playing.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../other-page/Search.dart';

var scaffoldkey = GlobalKey<ScaffoldState>();

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page2> {
  bool t1 = true;
  bool s1 = true;
  bool isVisible = false;
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
                leading: IconButton(
                    iconSize: 50,
                    color: Color(0xff3c4550),
                    onPressed: () {
                      scaffoldkey.currentState?.openDrawer();
                    },
                    icon: ImageIcon(AssetImage('assets/icons/menu.png'))),
                centerTitle: true,
                title: Text(
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "IranwebSanse",
                      fontWeight: FontWeight.w400,
                    ),
                    "My Music"),
                backgroundColor: Palette.primary,
                elevation: 1,
                shadowColor: Colors.grey,
                leadingWidth: 50,
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
                        child: const Icon(
                          Icons.add,
                          color: Color(0xff3c4550),
                          size: 25,
                        ),
                      )),
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
            body: Stack(children: [
              Column(
                children: [
                  if (isVisible)
                    TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            hintText: "Search",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            prefixIconColor: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 455.h,
                        child: GridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 5,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 7,
                            children:
                                List<Widget>.generate(Music.length, ($index) {
                              return Card(
                                elevation: 0,
                                clipBehavior: Clip.hardEdge,
                                color: Palette.primary,
                                child: Column(
                                  children: [
                                    Stack(children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) => Page3()));
                                          },
                                          child: Image(
                                            height: 95.h,
                                            image: AssetImage(
                                                'assets/images/cover_img.png'),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 4,
                                        left: 7,
                                        child: ImageIcon(
                                            AssetImage(
                                                "assets/icons/folder.png"),
                                            size: 15,
                                            color: Colors.white),
                                      ),
                                      Positioned(
                                        top: 2,
                                        right: 3,
                                        child: PopupMenuButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            child: ImageIcon(
                                              AssetImage(
                                                  'assets/icons/menu.png'),
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                            itemBuilder:
                                                (BuildContext context) {
                                              return [
                                                PopupMenuItem(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text(
                                                    'Delete Music',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontFamily:
                                                          "IranwebSanse",
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                      fontFamily:
                                                          "IranwebSanse",
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                      fontFamily:
                                                          "IranwebSanse",
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                    ]),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Like it Doesnt Hurt',
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: Colors.white,
                                        fontFamily: "IranwebSanse",
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      'Danito & Athina',
                                      style: TextStyle(
                                        color: Color(0xff3c4550),
                                        fontSize: 8.sp,
                                        fontFamily: "IranwebSanse",
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }))),
                  ),
                ],
              ),
              Positioned(bottom: 8, child: playing())
            ]),
          );
        });
  }
}
