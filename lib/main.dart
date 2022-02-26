import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workshop/screen/login/login_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.lightBlue.shade900,
          fontFamily: GoogleFonts.kanit().fontFamily,
          textTheme: TextTheme(
            headline1: const TextStyle(
              color: lightColor,
              fontSize: 64,
              fontWeight: FontWeight.bold,
            ),
            headline2: const TextStyle(
              color: lightColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            subtitle1: TextStyle(
              color: Colors.brown.shade600,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const LoginScreen());
  }
}
