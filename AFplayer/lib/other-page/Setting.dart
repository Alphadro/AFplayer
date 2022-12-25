import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';

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
        backgroundColor: Palette.primary,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [buildHeader(context), buildMenuItems(context)],
          ),
        ));
  }

  Widget buildHeader(BuildContext context) => Opacity(
        opacity: 0.75,
        child: Container(
          height: 150,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              //=> Background Linear Gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 165, 124, 253),
                Color.fromARGB(255, 144, 94, 250),
                Color.fromARGB(255, 132, 76, 253),
                Palette1.primary,
                Color.fromARGB(255, 132, 76, 253),
                Color.fromARGB(255, 144, 94, 250),
                Color.fromARGB(255, 165, 124, 253),
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
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        height: 600,
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
