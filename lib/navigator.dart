import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/fifthScreen.dart';
import 'package:untitled5/firstScreen.dart';
import 'package:untitled5/fourthScreen.dart';
import 'package:untitled5/secondScreen.dart';
import 'package:untitled5/third.dart';

class MainNavigator extends StatefulWidget{
  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0 ;
  List<Widget>Screens = [
    fifthScreen(),
    secondScreen(),
    fifthScreen(),
    fourthScreen(),
    thirdScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Screens[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      elevation: 10,
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: Colors.blueGrey,

      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.blueGrey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded), label: 'Favourites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_add), label: 'Connect'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'Account')
      ],
      onTap: (i){
        setState(() {
          _selectedIndex=i;
        });
      },
      currentIndex: _selectedIndex,
    )

    ));

  }
}