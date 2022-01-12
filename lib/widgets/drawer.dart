import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Abdullah Shakir'),
              accountEmail: Text('ac.info.pk@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                'Call me',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                'Get in Touch',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                CupertinoIcons.app_badge,
                color: Colors.white,
              ),
              title: Text(
                'Get Info',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
