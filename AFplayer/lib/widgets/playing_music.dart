import 'package:flutter/material.dart';

class playingMusic extends StatefulWidget {
  const playingMusic({super.key});

  @override
  State<playingMusic> createState() => _playingMusic();
}

class _playingMusic extends State<playingMusic> {
  double _currentvaleue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff262932),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
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
                    Text(
                      'Like it Doesnt Hurt',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Danito & Athina',
                      style: TextStyle(color: Color(0xff3c4550), fontSize: 11),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ImageIcon(
                    AssetImage('assets/icon/play_btn.png'),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    height: 20,
                    width: 20,
                    child: ImageIcon(AssetImage('assets/icon/forw.png'),
                        color: Color(0xff3c4550))),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                _currentvaleue.toString(),
                style: TextStyle(fontSize: 20),
              ),
              Container(
                color: Color(0xff262932),
                height: 20,
                width: 320,
                child: Positioned(
                  bottom: 5,
                  child: Slider(
                      value: _currentvaleue,
                      min: 0,
                      max: 315,
                      divisions: 315,
                      label: _currentvaleue.toString(),
                      activeColor: Color(0xff6f2dff),
                      inactiveColor: Color(0xff1c1e25),
                      onChanged: ((value) {
                        setState(() {
                          _currentvaleue = value;
                        });
                      })),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
