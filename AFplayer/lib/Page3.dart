import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    late double _currentSliderValueTrText = 25;
    ThemeData();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff202128),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: ImageIcon(
                          AssetImage(
                            "assets/icons/fave_b.png",
                          ),
                          color: Color(0xff6f2dff),

                          // Colors
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.more_vert,
                          color: Color(0xff909297),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/icons/arrow_down.png",
                    ),
                    color: Color(0xff3c4550),
                    size: 15,
                  ),
                  Text(
                    "Album List Plaing",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "IranwebSanse",
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  //color: Colors.white38,
                  //height: MediaQuery.of(context).size.width,
                  //width: MediaQuery.of(context).size.width,
                  //color: Colors.amber,
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/cover_img.png"),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xcc000000),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                            border: Border.all(
                              color: const Color(0xff6c5dd2),
                              width: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 30,
                          child: Text(
                            "Love On the Brain",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "IranwebSanse",
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          child: Text(
                            "Danito & Athina",
                            style: TextStyle(
                              color: Color(0xff3c4550),
                              fontFamily: "IranwebSanse",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ]),
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      SliderTheme(
                        data: const SliderThemeData(
                            trackHeight: 2,
                            thumbColor: Color(0xff36383e),
                            overlayColor: Color(0xff36383e),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 6)),
                        child: Slider(
                          activeColor: const Color(0xff6f2dff),
                          thumbColor: Color(0xff6f2dff),
                          inactiveColor: Color(0xff36383e),
                          value: _currentSliderValueTrText,
                          min: 1,
                          max: 100,
                          label: _currentSliderValueTrText.round().toString(),
                          onChanged: (double newValue) {
                            setState(() {
                              _currentSliderValueTrText = newValue;
                            });
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            //width: MediaQuery.of(context).size.width,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 30, 0, 0),
                                child: Text(
                                  "2:23",
                                  style: TextStyle(
                                    fontFamily: "IranwebSanse",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff3c4550),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            //width: MediaQuery.of(context).size.width,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 30, 25, 0),
                                child: Text(
                                  "3:15",
                                  style: TextStyle(
                                    fontFamily: "IranwebSanse",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff909297),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: IconButton(
                            onPressed: () => {},
                            icon: ImageIcon(
                              AssetImage(
                                "assets/icons/rep.png",
                              ),
                              color: Color(0xff6f2dff),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () => {},
                          icon: ImageIcon(
                            AssetImage(
                              "assets/icons/back.png",
                            ),
                            color: Color(0xff3c4550),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        //color: Color(0xffffffff),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Color(0x116f2dff),
                            ),
                            CircleAvatar(
                              radius: 43,
                              backgroundColor: Color(0x116f2dff),
                            ),
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Color(0x116f2dff),
                            ),
                            CircleAvatar(
                              radius: 29,
                              backgroundColor: Color(0xff6f2dff),
                            ),
                            ImageIcon(
                              AssetImage(
                                "assets/icons/play_btn.png",
                              ),
                              color: Color(0xffffffff),
                              size: 50,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () => {},
                          icon: ImageIcon(
                            AssetImage(
                              "assets/icons/next.png",
                            ),
                            color: Color(0xff3c4550),
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () => {},
                          icon: ImageIcon(
                            AssetImage(
                              "assets/icons/set.png",
                            ),
                            color: Color(0xff6f2dff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
