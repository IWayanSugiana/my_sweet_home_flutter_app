import 'package:flutter/material.dart';
import 'package:submission/detail_screen.dart';

import 'main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySweetHome',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Roboto'
      ),
      home: const MainScreen(),
    );
  }
}