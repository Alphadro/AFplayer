import 'package:flutter/material.dart';
import 'package:flutter_application_1/other-page/Album.dart';
import 'package:flutter_application_1/other-page/Search.dart';
import 'package:flutter_application_1/other-page/Setting.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/playing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                          setState(() {});
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  if (isVisible)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                      child:
                          SizedBox(height: 40.h, width: 350.w, child: Search()),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                        height: 500.h,
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
                                                    builder: (_) =>
                                                        PageAlbum()));
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
                                        child: Theme(
                                          data: Theme.of(context).copyWith(
                                              dividerColor: Colors.amber),
                                          child: PopupMenuButton<int>(
                                              onSelected: (value) async {},
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              color: Palette.primary
                                                  .withOpacity(.9),
                                              child: ImageIcon(
                                                AssetImage(
                                                    'assets/icons/menu.png'),
                                                color: Colors.white,
                                                size: 25,
                                              ),
                                              itemBuilder: (context) => [
                                                    PopupMenuItem(
                                                      padding:
                                                          EdgeInsets.all(10),
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
                                                    PopupMenuDivider(),
                                                    PopupMenuItem(
                                                      padding:
                                                          EdgeInsets.all(10),
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
                                                      padding:
                                                          EdgeInsets.all(10),
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
                                                  ]),
                                        ),
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
                  playing()
                ],
              ),
            ),
          );
        });
  }
}
