import 'package:flutter/material.dart';
import 'package:iti_project1/task1/first_screen.dart';
import 'package:iti_project1/task2/logo_screeon.dart';
import 'package:iti_project1/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home://  homeScreen(),
       firstScreen(),
    );
  }
}


