import 'package:flutter/material.dart';
import './pages/home.dart';
import 'pages/homeNote.dart';
import './pages/addNote.dart';
import './pages/username.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Username(),
    );
  }
}
