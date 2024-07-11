import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          // Logo and menu items
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.grey[900]),
                child: Image.asset(
                  'lib/images/nike_logo.png',
                  color: Colors.white,
                  height: 240,
                  width: 200,
                ),
              ),
              Divider(color: Colors.black),
              // Home button
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // About button
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: ListTile(
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text(
                    "About",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          // Use Expanded to push the logout button to the bottom
          Expanded(child: Container()),
          // Logout button
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 24),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
