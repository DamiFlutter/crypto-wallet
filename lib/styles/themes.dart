import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF5F5F5);
  static const Color black = Color(0xFF000000);
  static const Color mainBlue = Color(0xFF00A6FF);
  static const Color mainBlueDark = Color.fromARGB(255, 1, 64, 98);
  static Color darkBG = const Color(0xff121212);
  static const Color mainBlueLight = Color.fromARGB(255, 5, 151, 199);
}

class ThemeConfig {
  static ThemeData lightThme = ThemeData(
    primaryColor: MyColors.mainBlueDark,
    brightness: Brightness.light,
    accentColor: MyColors.mainBlueLight,
    scaffoldBackgroundColor: MyColors.background,
    appBarTheme: AppBarTheme(
      color: Color(0xFFF5F5F5),
      titleTextStyle: GoogleFonts.balooBhai2(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: GoogleFonts.balooBhai2(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      elevation: 0,
    ),
    textTheme: TextTheme(
      headline6: GoogleFonts.balooBhai2(
        color: MyColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: MyColors.darkBG,
    appBarTheme: AppBarTheme(
      color: MyColors.darkBG,
      textTheme: TextTheme(
        headline6: GoogleFonts.balooBhai2(
          color: MyColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textTheme: TextTheme(
      headline6: GoogleFonts.balooBhai2(
        color: MyColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
