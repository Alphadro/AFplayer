import 'package:flutter/material.dart';
import 'package:flutter_application_1/playing.dart';


import 'Page3.dart';
import 'Search.dart';
import 'Setting.dart';
const primaryColor = Color(0xFF202128);
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  _pageState createState() => _pageState();
  
}

class _pageState extends State<Page1> {
    bool t1 = false;
  bool s1 = false;
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
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(style: TextStyle(fontSize: 15), "Filter"),
              SizedBox(
                width: 15,
              ),
              Text(style: TextStyle(fontSize: 15), "Arrange"),
              SizedBox(
                width: 15,
              ),
              Text(style: TextStyle(fontSize: 15), "View"),
            ],
          ),
          backgroundColor: primaryColor,
          elevation: 1,
          shadowColor: Colors.grey,
          leadingWidth: 50,
          leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    s1 = true;
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Setting())));
                  });
                },
                child: const ImageIcon(
                  AssetImage("assets/Icon/menu.png"),
                  size: 25,
                  color: Color(0xff3c4550),
                ),
              )),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      s1 = true;
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Search())));
                    });
                  },
                  child: const ImageIcon(
                    AssetImage("assets/Icon/search.png"),
                    size: 25,
                    color: Color(0xff3c4550),
                  ),
                )),
          ],
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
            child: Container(
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
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 0,
                          height: 110,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: AssetImage('assets/Icon/cover_img.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Page3()));
                          },
                        ),
                        const Positioned(
                          top: 2,
                          left: 5,
                          child: ImageIcon(
                            AssetImage("assets/Icon/music.png"),
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 2,
                          right: 5,
                          child: ImageIcon(
                            AssetImage("assets/Icon/menu.png"),
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
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          const Positioned(bottom: 5, left: 8, right: 8, child: playing())
        ]));
  }
}
