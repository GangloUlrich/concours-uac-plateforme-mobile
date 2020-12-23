import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
            child: Center(
              child: Text(
                'JOBS UAC',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700]),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Publications'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Galerie'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('FAQ'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.headset),
            title: Text('Podcast Employabilité'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('A propos'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
