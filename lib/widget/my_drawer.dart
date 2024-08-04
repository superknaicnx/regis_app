import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "John Doe";
  String accountemail = "johndoe@example.com";

  @override
  Widget build(BuildContext context) {
     return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountName: Text(name),
              accountEmail: Text(accountemail),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                  
                },
                  ),
                  ListTile(
                    leading: Icon(Icons.file_copy),
                    title: Text("About"),
                   onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () {}
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    onTap: () {
                      // Add logout functionality here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}