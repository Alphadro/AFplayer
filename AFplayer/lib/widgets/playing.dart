import 'package:flutter/material.dart';

class playing extends StatefulWidget {
  const playing({super.key});

  @override
  State<playing> createState() => _playing();
}

class _playing extends State<playing> {
  double _currentvaleue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
                        child: Image.asset('assets/Icon/cover_img.png'))),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Like it Doesnt Hurt',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Danito & Athina',
                      style: TextStyle(color: Color(0xff3c4550), fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 110,
                ),
                const SizedBox(
                  height: 40,
                  width: 40,
                  child: ImageIcon(
                    AssetImage('assets/Icon/play_btn.png'),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                    height: 20,
                    width: 20,
                    child: ImageIcon(AssetImage('assets/Icon/forw.png'),
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
                height: 5,
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
