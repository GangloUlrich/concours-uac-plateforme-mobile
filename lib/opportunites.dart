import 'package:flutter/material.dart';

class OpportunitePage extends StatefulWidget {
  OpportunitePage({Key key}) : super(key: key);

  @override
  _OpportunitePageState createState() => _OpportunitePageState();
}

class _OpportunitePageState extends State<OpportunitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Opportunité',
                      style:
                          TextStyle(fontSize: 16.0, fontFamily: 'Montserrat'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
                  ],
                ),
              ));
            }));
  }
}
