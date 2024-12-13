import 'package:flutter/material.dart';
import 'package:untitled5/fifthScreen.dart';
import 'package:untitled5/firstScreen.dart';
import 'package:untitled5/fourthScreen.dart';
import 'package:untitled5/navigator.dart';
import 'package:untitled5/secondScreen.dart';
import 'package:untitled5/third.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: firstScreen(),
    );
  }
}

