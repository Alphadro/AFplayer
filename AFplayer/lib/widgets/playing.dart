import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class playing extends StatefulWidget {
  const playing({super.key});

  @override
  State<playing> createState() => _playing();
}

class _playing extends State<playing> {
  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Container(
              height: 110.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff262932),
              ),
              child: Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 40.h,
                              width: 40.w,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                      'assets/images/cover_img.png'))),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Like it Doesnt Hurt',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Danito & Athina',
                                style: TextStyle(
                                  color: Color(0xff3c4550),
                                  fontSize: 11.sp,
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80.w,
                          ),
                          Container(
                            height: 43.h,
                            child: IconButton(
                              onPressed: () => {},
                              icon: ImageIcon(
                                  AssetImage('assets/icons/play_btn.png'),
                                  color: Colors.white,
                                  size: 45),
                            ),
                          ),
                          Container(
                            height: 43.h,
                            child: IconButton(
                                onPressed: () => {},
                                icon: ImageIcon(
                                  AssetImage('assets/icons/forw.png'),
                                  color: Color(0xff3c4550),
                                  size: 20,
                                )),
                          ),
                        ],
                      ),
                      Column(children: [
                        SliderTheme(
                          data: const SliderThemeData(
                              trackHeight: 2,
                              thumbColor: Color(0xff36383e),
                              overlayColor: Color(0xff36383e),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 6)),
                          child: Container(
                            height: 20.h,
                            width: 350.w,
                            child: Slider(
                              activeColor: const Color(0xff6f2dff),
                              thumbColor: Color(0xff6f2dff),
                              inactiveColor: Color(0xff36383e),
                              value: _currentvalue,
                              min: 0,
                              max: 10,
                              onChanged: (value) {
                                setState(() {
                                  _currentvalue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "2:23",
                                style: TextStyle(
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff3c4550),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 271.w,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "3:15",
                                style: TextStyle(
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff909297),
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                    ])),
              ));
        });
  }
}
