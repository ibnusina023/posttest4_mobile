import 'package:flutter/material.dart';
import 'package:posttest4_1915016023_ibnusina/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: MainPage(),
      ),
    );
  }
}