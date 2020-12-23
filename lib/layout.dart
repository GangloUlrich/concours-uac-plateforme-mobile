import 'package:Hellowworld/accueil.dart';
import 'package:Hellowworld/opportunites.dart';
import 'package:Hellowworld/trucs_astuces.dart';
import 'package:flutter/material.dart';

import 'main_drawer.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [AccueilPage(), OpportunitePage(), AstucesPage()];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onitemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text('JOBS UAC'),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => {},
            )
          ],
        ),
        drawer: MainDrawer(),
        body: PageView(
          controller: _pageController,
          children: _screen,
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green[700],
          selectedFontSize: 17,
          onTap: _onitemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green[700],
              ),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
                color: Colors.green[700],
              ),
              label: 'Opportunités',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.construction,
                  color: Colors.green[700],
                ),
                label: 'Trucs et astuces',
                backgroundColor: Colors.green)
          ],
        ));
  }
}
