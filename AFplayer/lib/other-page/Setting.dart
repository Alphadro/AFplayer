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
      appBar: AppBar(),
    );
  }
}

class NavegationDrawer extends StatelessWidget {
  NavegationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 275,
        child: Drawer(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(18),
                    topRight: Radius.circular(18))),
            backgroundColor: Color.fromARGB(230, 22, 24, 29),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [buildHeader(context), buildMenuItems(context)],
              ),
            )),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(240, 22, 24, 29),
            borderRadius: BorderRadius.only(topRight: Radius.circular(18))),
        height: 150,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 50,
                  child: Image.asset('assets/icons/app_icon_ios.png')),
              SizedBox(
                width: 15,
              ),
              Text(
                "AFplayer",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        child: Wrap(
          children: [
            Container(
              color: Colors.white.withOpacity(.2),
              height: 1,
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/icons/circlemusic.png'),
                color: Colors.white,
                size: 35,
              ),
              title: Text(
                "Hidden Songs",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      );
}
