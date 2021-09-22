import 'package:flutter/material.dart';
import 'package:oriented_dash/oriented.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orient Landing',
      home: Oriented(),
    );
  }
}
