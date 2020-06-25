import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Purwokerto',
      theme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}




