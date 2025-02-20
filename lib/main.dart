import 'package:flutter/material.dart';
import 'package:notes/pages/first_page.dart';
import 'package:notes/pages/home_page.dart';
import 'package:notes/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("Ayo, das crazy.. I mean, wow.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
