import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFFB7935F),
      seedColor: const Color(0xFFB7935F),
      onSecondary: Colors.black,
      background: const Color(0xFFF8F8F8),
      secondary: const Color(0xFFB7935F),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
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
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.amiri(
        color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w600,
      ),
    ),
    dividerColor: const Color(0xFFB7935F),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xFF141A2E),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFF141A2E),
      seedColor: const Color(0xFF141A2E),
      onSecondary: const Color(0xFFFACC1D),
      background: const Color(0xFF141A2E),
      secondary: const Color(0xFFFACC1D),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 35,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.amiri(
        color: const Color(0xFFFACC1D),
        fontSize: 21,
        fontWeight: FontWeight.w600,
      ),
    ),
    dividerColor: const Color(0xFFFACC1D),
  );
}
