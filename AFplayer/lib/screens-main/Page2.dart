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
  bool isVisible = true;
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
                        onTap: () => setState(() => isVisible = !isVisible),
                        child: const ImageIcon(
                          AssetImage("assets/icons/search.png"),
                          size: 25,
                          color: Color(0xff3c4550),
                        ),
                      )),
                ]),
            body: ListView(
              children: [
                if (isVisible)
                  SingleChildScrollView(
                    child: TextField(
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
                  ),
              ],
            ),
          );
        });
  }
}
