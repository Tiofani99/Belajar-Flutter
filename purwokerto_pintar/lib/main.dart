import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'file:///D:/Belajar%20Flutter/purwokerto_pintar/lib/feature/main/MainScreen.dart';
import 'package:purwokertopintar/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      home: MainScreen(),
    );
  }
}

