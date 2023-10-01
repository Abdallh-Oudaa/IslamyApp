import 'package:flutter/material.dart';

class My_Theme {
  static bool isEnableDark = false;

  static ThemeData light_Theme = ThemeData(
    
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.white,
      elevation: 40,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFFB7935F),
      primary: Color(0xFFB7935F),
      secondary: Color(0xFFB7935F),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      background: Colors.black,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      labelMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    useMaterial3: true,
    dividerColor: Color(0xFFB7935F),
  );
  static ThemeData Dark_Theme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Color(0xFF141A2E)),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Color(0xFF141A2E),
      elevation: 40,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF141A2E),
      primary: Color(0xFF141A2E),
      secondary: Color(0xFFB7935F),
      onPrimary: Color(0xFFFACC1D),
      onSecondary: Colors.black,
      background: Colors.white,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFFACC1D)),
      labelMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Color(0xFFFACC1D),
      unselectedItemColor: Colors.white,
    ),
    useMaterial3: true,
    dividerColor: Color(0xFFFACC1D),
  );
}
