import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
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
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              child: Text(
                "AFplayer",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          children: [
            ListTile(
              title: Text(
                "Hidden Songs",
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "Hidden Songs",
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "Hidden Songs",
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text(
                "Hidden Songs",
              ),
              onTap: () {},
            )
          ],
        ),
      );
}
