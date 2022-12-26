import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';
import 'package:flutter_application_1/widgets/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageAlbum extends StatefulWidget {
  const PageAlbum({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

const primaryColor = Color(0xff1c1e25);

class _pageState extends State<PageAlbum> {
  List<String> Music = [
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
            backgroundColor: Palette.primary,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color.fromARGB(221, 244, 241, 241),
                      height: 250,
                      child: Opacity(
                        opacity: 0.8,
                        child: Image.asset('assets/icons/images/cover_img.png'),
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: Music.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Page3()));
                          });
                        },
                        child: Card(
                          elevation: 0,
                          color: Color.fromARGB(255, 31, 34, 41),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, bottom: 5, top: 5),
                                child: SizedBox(
                                    height: 40.h,
                                    width: 40.w,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                            'assets/icons/images/cover_img.png'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 5),
                                      child: Text(
                                        'Song Name',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 5),
                                      child: Text(
                                        'Artist Name',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey[400]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              PopupMenuButton(
                                  color: Palette.primary,
                                  child: ImageIcon(
                                    AssetImage('assets/icons/menu.png'),
                                    color: Color(0xff3c4550),
                                    size: 40,
                                  ),
                                  itemBuilder: (BuildContext context) {
                                    return [
                                      PopupMenuItem(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'Delet Music',
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
                                  })
                            ],
                          ),
                        ),
                      );
                    }))
              ],
            ),
          );
        });
  }
}
