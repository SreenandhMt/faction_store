import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  static final darkTheme = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark(secondary: Colors.black26,tertiary: Colors.black12),
    primaryColor: const Color.fromRGBO(216,255,117, 1),
    scaffoldBackgroundColor: const Color.fromRGBO(9,9,9, 1),
    drawerTheme: const DrawerThemeData(backgroundColor: Color.fromARGB(255, 29, 29, 29)),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black,elevation: 0),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(color: Colors.white),
      headlineMedium: GoogleFonts.nunito(color: Colors.white70),
      headlineSmall: GoogleFonts.nunito(color: Colors.white60),
      bodyLarge: GoogleFonts.nunito(color: Colors.white),
      bodyMedium: GoogleFonts.nunito(color: Colors.white70),
      bodySmall: GoogleFonts.nunito(color: Colors.white60),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade700,
      hintStyle: GoogleFonts.nunito(),
      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 0.5)),
    ),

  );
  static final lightTheme = ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light(secondary: Colors.white24,tertiary: Colors.white12),
    primaryColor: const Color.fromRGBO(216,255,117, 1),
    scaffoldBackgroundColor: const Color.fromRGBO(240,237,224, 1),
    drawerTheme: const DrawerThemeData(backgroundColor: Color.fromARGB(255, 200, 196, 182)),
    appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 220, 217, 205),elevation: 0),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(color: Colors.black),
      headlineMedium: GoogleFonts.nunito(color: Colors.black87),
      headlineSmall: GoogleFonts.nunito(color: Colors.black54),
      bodyLarge: GoogleFonts.nunito(color: Colors.black),
      bodyMedium: GoogleFonts.nunito(color: Colors.black87),
      bodySmall: GoogleFonts.nunito(color: Colors.black54),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade200,
      hoverColor: Colors.grey.shade300,
      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 0.5)),
    ),
  );
}
