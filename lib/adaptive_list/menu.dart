import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "VIEW PROFILE",
              style: TextStyle(fontSize: 28),
            ),
          ),
          Divider(
            thickness: 3,
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text(
              "FRIENDS",
              style: TextStyle(fontSize: 28),
            ),
          ),
          Divider(
            thickness: 3,
          ),
          ListTile(
            leading: Icon(Icons.note_alt),
            title: Text(
              "REPOSRT",
              style: TextStyle(fontSize: 28),
            ),
          )
        ],
      ),
    );
  }
}