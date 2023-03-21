import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final imageUrl = "https://avatars.githubusercontent.com/u/76845428?v=4";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [  
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Shanks'),
                accountEmail: Text('shanks785@gmail.com'),
                // currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Profile', textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
