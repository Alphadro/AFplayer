import 'package:flutter/material.dart';

const primaryColor = Color(0xff1c1e25);

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavegationDrawer(),
    );
  }
}

class NavegationDrawer extends StatelessWidget {
  NavegationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [buildHeader(context), buildMenuItems(context)],
      ),
    ));
  }

  Widget buildHeader(BuildContext context) => Container(
        height: 150,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            //=> Background Linear Gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xad6f2dff),
              Color(0xff6f2dff),
            ],
          ),
        ),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "AFplayer",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        height: 700,
        color: primaryColor,
        padding: EdgeInsets.all(24),
        child: Wrap(
          children: [
            ListTile(
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            )
          ],
        ),
      );
}
