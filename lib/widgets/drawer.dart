import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(108, 100, 251, 0.95),
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Color.fromRGBO(108, 100, 251, 0.95),
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(108, 100, 251, 0.96),
              ),
              accountName:
                  Text("Sankalp Srivastava", style: TextStyle(fontSize: 20)),
              accountEmail: Text("sankalpsrivastav55@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profilePic.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.envelope,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.lightbulb,
              color: Colors.white,
            ),
            title: Text(
              "About",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
