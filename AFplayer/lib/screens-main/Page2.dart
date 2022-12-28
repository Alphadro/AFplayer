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
  List<String> Music = [
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
            body: Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 12),
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
                                    child: const Image(
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
                                            builder: (_) => PageAlbum()));
                                  },
                                ),
                                const Positioned(
                                  top: 4,
                                  left: 7,
                                  child: ImageIcon(
                                    AssetImage("assets/icons/folder.png"),
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Positioned(
                                  top: 2,
                                  right: 3,
                                  child: PopupMenuButton(
                                      position: PopupMenuPosition.under,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      color: Palette.primary.withOpacity(0.9),
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
                                              'Rename',
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
                                      'Favorite',
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: Colors.white,
                                        fontFamily: "IranwebSanse",
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )),
                                Positioned(
                                    bottom: 0,
                                    child: Text(
                                      '2 song',
                                      style: TextStyle(
                                        color: Color(0xff3c4550),
                                        fontSize: 8.sp,
                                        fontFamily: "IranwebSanse",
                                        fontWeight: FontWeight.w200,
                                      ),
                                    )),
                              ]));
                        }))),
              ),
              const Positioned(bottom: 5, left: 8, right: 8, child: playing()),
            ]),
          );
        });
  }
}
