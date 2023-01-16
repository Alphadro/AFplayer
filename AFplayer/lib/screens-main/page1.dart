import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/playing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import '../other-page/Search.dart';
import 'Page3.dart';
import '../other-page/Setting.dart';

var scaffoldkey = GlobalKey<ScaffoldState>();

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page1> {
  final OnAudioQuery _audioQuery = OnAudioQuery();

  bool t1 = false;
  bool s1 = false;
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
            backgroundColor: Palette.primary,
            appBar: AppBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.white54),
                    child: PopupMenuButton<int>(
                        onSelected: (value) async {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Palette.primary.withOpacity(.9),
                        child: Text(
                          'Filter',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        itemBuilder: (context) => [
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
                              PopupMenuDivider(),
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
                              PopupMenuDivider(),
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
                            ]),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.white54),
                    child: PopupMenuButton<int>(
                        onSelected: (value) async {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Palette.primary.withOpacity(.9),
                        child: Text(
                          'Arrange',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        itemBuilder: (context) => [
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
                              PopupMenuDivider(),
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
                              PopupMenuDivider(),
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
                                  setState(() {});
                                },
                              ),
                              PopupMenuDivider(),
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
                            ]),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.white54),
                    child: PopupMenuButton<int>(
                        onSelected: (value) async {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Palette.primary.withOpacity(.9),
                        child: Text(
                          'View',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        itemBuilder: (context) => [
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
                              PopupMenuDivider(),
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
                              PopupMenuDivider(),
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
                            ]),
                  ),
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
                      onTap: () => setState(() => isVisible = !isVisible),
                      child: const ImageIcon(
                        AssetImage("assets/icons/search.png"),
                        size: 25,
                        color: Color(0xff3c4550),
                      ),
                    )),
              ],
            ),
            body: Stack(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    if (isVisible)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                        child: SizedBox(
                            height: 40.h, width: 350.w, child: Search()),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: 500.h,
                        child: FutureBuilder<List<SongModel>>(
                          future: _audioQuery.querySongs(
                            sortType: null,
                            orderType: OrderType.ASC_OR_SMALLER,
                            uriType: UriType.EXTERNAL,
                            ignoreCase: true,
                          ),
                          builder: (context, item) {
                            if (item.data == null) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                            if (item.data!.isEmpty) {
                              return Center(
                                child: Text('No Songs Found'),
                              );
                            }
                            return GridView.count(
                                crossAxisCount: 3,
                                mainAxisSpacing: 5,
                                childAspectRatio: 2 / 2.5,
                                crossAxisSpacing: 7,
                                children: List<Widget>.generate(
                                    item.data!.length, (index) {
                                  return Card(
                                    elevation: 0,
                                    clipBehavior: Clip.hardEdge,
                                    color: Palette.primary,
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Page3(
                                                        songModel:
                                                            item.data![index],
                                                      ),
                                                    ));
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
                                                    "assets/icons/circlemusic.png"),
                                                size: 15,
                                                color: Colors.white),
                                          ),
                                          Positioned(
                                            top: 2,
                                            right: 3,
                                            child: Theme(
                                              data: Theme.of(context).copyWith(
                                                  dividerColor: Colors.white54),
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
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Text(
                                                            'Delete Music',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  "IranwebSanse",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Text(
                                                            'Add to Play List',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  "IranwebSanse",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Text(
                                                            'Share Music',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  "IranwebSanse",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                          item.data![index].title,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            color: Colors.white,
                                            fontFamily: "IranwebSanse",
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        Text(
                                          item.data![index].artist ?? 'no',
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
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
                                }));
                          },
                        ),
                      ),
                    ),
                    playing()
                  ],
                ),
              ),
            ]),
          );
        });
  }
}
