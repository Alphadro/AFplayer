import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';
import 'package:flutter_application_1/settingpage.dart';
import 'package:flutter_application_1/widgets/playing_music.dart';

import 'Search.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

const primaryColor = Color(0xff1c1e25);

class _pageState extends State<Page2> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(style: TextStyle(fontSize: 18), "My Music"),
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
                                builder: ((context) => settingpage())));
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
      body: Stack(children: [
        Container(
            color: primaryColor,
            child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 14,
                childAspectRatio: 2 / 2.5,
                crossAxisSpacing: 7,
                children: List<Widget>.generate(Music.length, ($index) {
                  return Card(
                      elevation: 0,
                      clipBehavior: Clip.hardEdge,
                      color: primaryColor,
                      child: Stack(alignment: Alignment.center, children: [
                        Positioned(
                          top: 0,
                          height: 110,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: AssetImage('assets/images/cover_img.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Page3()));
                          },
                        ),
                        const Positioned(
                          top: 2,
                          left: 5,
                          child: ImageIcon(
                            AssetImage("assets/icons/folder.png"),
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
                        const Positioned(
                            bottom: 11,
                            child: Text(
                              'Like it Doesnt Hurt',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                        const Positioned(
                            bottom: 2,
                            child: Text(
                              'Danito & Athina',
                              style: TextStyle(
                                  color: Color(0xff3c4550), fontSize: 8),
                            )),
                      ]));
                }))),
        const Positioned(bottom: 5, left: 8, right: 8, child: playingMusic())
      ]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xff6f2dff),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Page3()));
        },
        label: Text("New"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
