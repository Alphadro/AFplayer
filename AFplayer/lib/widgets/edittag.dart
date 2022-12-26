import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                child: Text(
                  'pic of Song',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Edit Song Name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Edit Album Name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Edit Artist Name",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  )),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 25),
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}
