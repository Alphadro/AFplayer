import 'package:flutter/material.dart';

class playing extends StatefulWidget {
  const playing({super.key});

  @override
  State<playing> createState() => _playing();
}

class _playing extends State<playing> {
  late double _currentSliderValueTrText = 25;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
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
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/cover_img.png'))),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Like it Doesnt Hurt',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
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
                            fontSize: 11,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Expanded(
                      child: Container(
                        child: IconButton(
                          onPressed: () => {},
                          icon: ImageIcon(
                            AssetImage('assets/icons/play_btn.png'),
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        child: IconButton(
                            onPressed: () => {},
                            icon: ImageIcon(
                              AssetImage('assets/icons/forw.png'),
                              color: Color(0xff3c4550),
                              size: 16,
                            )),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      _currentSliderValueTrText.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(children: [
                  Stack(children: [
                    SliderTheme(
                      data: const SliderThemeData(
                          trackHeight: 2,
                          thumbColor: Color(0xff36383e),
                          overlayColor: Color(0xff36383e),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 6)),
                      child: Container(
                        height: 15,
                        width: 350,
                        child: Slider(
                          activeColor: const Color(0xff6f2dff),
                          thumbColor: Color(0xff6f2dff),
                          inactiveColor: Color(0xff36383e),
                          value: _currentSliderValueTrText,
                          min: 1,
                          max: 100,
                          onChanged: (double newValue) {
                            setState(() {
                              _currentSliderValueTrText = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ])
                ])
              ])),
        ));
  }
}
