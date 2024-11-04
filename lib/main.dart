import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge4/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class AppColor {
  static const foregroundColor = Color(0xffa3ecec);
  static const secondaryColor = Color(0xff081053);
  static const darkSecondaryColor = Color(0xff080e2b);
  static const lightSecondary = Color(0xff1f2972);
  static const tertiaryColor = Color(0xff010209);
  static const lightTertiaryColor = Color(0xff040613);
  static const white = Colors.white;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
