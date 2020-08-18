import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DrawerHeader(
              child: Center(
                child: Text(
                  'Image',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.popAndPushNamed(context, '/profile')},
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Create Contest'),
            onTap: () => {Navigator.popAndPushNamed(context, '/contest')},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.comment),
            title: Text('Comment'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.popAndPushNamed(context, '/')},
          ),
        ],
      ),
    );
  }
}
