import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final imageUrl = "https://avatars.githubusercontent.com/u/76845428?v=4";

    return Drawer(
      child: ListView(
        children: [  
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Shanks'),
              accountEmail: Text('shanks785@gmail.com'),
              currentAccountPicture: Image.network(imageUrl),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
