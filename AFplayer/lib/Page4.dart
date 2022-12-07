import 'package:flutter/material.dart';

import 'Search.dart';
import 'Setting.dart';

const primaryColor = Color(0xff1c1e25);
class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page4> {
    bool t1 = true;
  bool s1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(style: TextStyle(fontSize: 18), "For Me"),
        backgroundColor: primaryColor,
        elevation: 1,
        shadowColor: Colors.grey,
        leadingWidth: 45,
        leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: t1
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        t1 = true;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Setting())));
                      });
                    },
                    child: const ImageIcon(
                      AssetImage("assets/icons/menu.png"),
                      color: Color(0xff3c4550),
                      size: 35,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        t1 = false;
                      });
                    },
                    child: Ink.image(
                      image: AssetImage("assets/icons/menu.png"),
                      colorFilter:
                          ColorFilter.mode(Color(0x003c4550), BlendMode.color),
                      child: InkWell(
                        onTap: () {},
                      ),
                    ))),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: s1
                  ? GestureDetector(
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
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          s1 = false;
                        });
                      },
                      child: Ink.image(
                        image: AssetImage("assets/icons/search.png"),
                      ))),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: const Text(
                    "Dark Mode",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Kevin Obrien Studio Art Furniture House',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Color(0xff63697c)),
                  ),
                ),
                SizedBox(
                  height: 75,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 10),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/themes/theme1.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/themes/theme2.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/themes/theme3.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            color: Color(0xff23272f),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Light Mode",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Kevin Obrien Studio Art Furniture House',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Color(0xff63697c)),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 10),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/themes/theme4.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/themes/theme5.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/themes/theme6.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 440,
              color: primaryColor,
              child: Expanded(
                child: SizedBox(
                  height: 350,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image(
                      image: AssetImage(
                        "assets/themes/Tablighat.png",
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
