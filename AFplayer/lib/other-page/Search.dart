import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Search> {
  void updateList(String value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.primary,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        prefixIconColor: Colors.black)),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: ListView())
            ]));
  }
}
