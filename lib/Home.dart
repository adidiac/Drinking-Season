import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:drinking_season/Alchol_Calc.dart';
import 'package:drinking_season/Creations.dart';
import 'package:drinking_season/Drinks.dart';
import 'package:drinking_season/Profil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'Tematica.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [
    Tematica(),
    Drinks(),
    Creations(),
    Alchol_Calc(),
    Profil()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.yellow,
        initialIndex: _currentIndex,
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(FontAwesome.glass),
          Icon(FontAwesome.plus),
          Icon(AntDesign.calculator),
          Icon(Entypo.user)
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}
