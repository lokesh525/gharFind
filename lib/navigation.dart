import 'package:flutter/material.dart';
BottomNavigationBar navigationBar = BottomNavigationBar(

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
);








