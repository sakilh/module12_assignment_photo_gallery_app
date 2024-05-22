import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(PhotoApp());
}

class PhotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}