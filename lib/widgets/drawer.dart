import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageUrl =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text('Jishnulal'),
                accountEmail: const Text('Jishnulal9497@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    imageUrl,
                  ),
                ),
              )),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text('Profile', style: TextStyle(color: Colors.white)),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.fullscreen_exit,
              color: Colors.white,
            ),
            title: Text('Logout', style: TextStyle(color: Colors.white)),
          )
        ]),
      ),
    );
  }
}
