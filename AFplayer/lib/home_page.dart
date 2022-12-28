import 'package:flutter_application_1/widgets/colors.dart';

import 'screens-main/Page2.dart';
import 'screens-main/page1.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'screens-main/Page3.dart';
import 'screens-main/Page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _homepage createState() => _homepage();
}

class _homepage extends State<HomePage> {
  int selectedPage = 2;
  final _pageNo = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    //ThemeData(primarySwatch: Colors.blackm,);
    return Scaffold(
      body: _pageNo[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          //color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(.5),
            )
          ],
        ),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff909297),
                  width: 0.05,
                ),
              ),
              color: Color(0xff262932),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Color(0xff262932),
                gap: 8,
                activeColor: Color(0xffcccccc),
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Palette1.primary,
                color: Color(0xff909297),
                tabs: [
                  GButton(
                    leading: SizedBox(
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/list.png",
                        ),
                        color: Color(0xffcccccc),
                      ),
                    ),
                    text: 'List',
                    icon: Icons.remove,
                  ),
                  GButton(
                    leading: SizedBox(
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/fave.png",
                        ),
                        color: Color(0xffcccccc),
                      ),
                    ),
                    text: 'Favorite',
                    icon: Icons.remove,
                  ),
                  GButton(
                    leading: SizedBox(
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/music.png",
                        ),
                        color: Color(0xffcccccc),
                      ),
                    ),
                    text: 'Music',
                    icon: Icons.remove,
                  ),
                  GButton(
                    leading: SizedBox(
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/home.png",
                        ),
                        color: Color(0xffcccccc),
                      ),
                    ),
                    text: 'Home',
                    icon: Icons.remove,
                  ),
                ],
                selectedIndex: currentIndex,
                onTabChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
