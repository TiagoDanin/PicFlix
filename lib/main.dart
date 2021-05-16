import 'package:flutter/material.dart';
import 'package:picflix/pages/HomeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        backgroundColor: Colors.black,
        primaryColor: Color(0xffdb0000),
      ),
      home: HomePage(),
    );
  }
}
