import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';

import 'package:flutter_application_1/widgets/playing.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageAlbum extends StatefulWidget {
  const PageAlbum({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

const primaryColor = Color(0xff1c1e25);

class _pageState extends State<PageAlbum> {
  bool t1 = true;
  bool s1 = true;
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
            body: Column(
              children: [
                Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 12),
                    child: Container(
                        color: primaryColor,
                        child: GridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 14,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 7,
                            children:
                                List<Widget>.generate(Music.length, ($index) {
                              return Card(
                                  elevation: 0,
                                  clipBehavior: Clip.hardEdge,
                                  color: primaryColor,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          top: 0,
                                          height: 90.h,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                    builder: (_) => Page3()));
                                          },
                                        ),
                                        const Positioned(
                                          top: 2,
                                          left: 5,
                                          child: ImageIcon(
                                            AssetImage(
                                                "assets/icons/folder.png"),
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
                                            )),
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
                            }))),
                  ),
                  const Positioned(
                      bottom: 5, left: 8, right: 8, child: playing()),
                ]),
              ],
            ),
          );
        });
  }
}
