import 'package:flutter/material.dart';
import 'colors.dart';

class edittag extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _edittag();
}

Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
  );
}

class _edittag extends State<edittag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1c1e25),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Color.fromARGB(221, 244, 241, 241),
                    height: 250,
                    child: Image.asset('assets/images/cover_img.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "Edit Song Name",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                width: 400,
                child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(.09),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Edit Album Name",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: 400,
                child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(.09),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Edit Artist Name",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: 400,
                child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(.09),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {});
                  }),
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    backgroundColor: Palette1.primary,
                    elevation: 10,
                  ))
            ],
          )),
        ));
  }
}
