import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xff1c1e25),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Search for a Music',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
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
                SizedBox(
                  height: 20,
                ),
                Expanded(child: ListView())
              ]),
        ));
  }
}
