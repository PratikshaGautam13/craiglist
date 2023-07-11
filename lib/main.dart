import 'package:craiglist/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppConstants.dart';

void main() {
  runApp(const MyApp());
}

var r = 158; //93
var g = 50; //155
var b = 221; //56

Map<int, Color> color = {
  50: Color.fromRGBO(r, g, b, 0.1),
  100: Color.fromRGBO(r, g, b, .2),
  200: Color.fromRGBO(r, g, b, .3),
  300: Color.fromRGBO(r, g, b, .4),
  400: Color.fromRGBO(r, g, b, .5),
  500: Color.fromRGBO(r, g, b, .6),
  600: Color.fromRGBO(r, g, b, .7),
  700: Color.fromRGBO(r, g, b, .8),
  800: Color.fromRGBO(r, g, b, .9),
  900: Color.fromRGBO(r, g, b, 1),
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primaryColor: Color(0xFF24a424),
          // backgroundColor: Color(0xFF24a424),
          primarySwatch: MaterialColor(primaryClrCode, color),
          fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
