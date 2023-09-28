import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xFFB7935F),
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.inter(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.amiri(
        color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
  );
}
