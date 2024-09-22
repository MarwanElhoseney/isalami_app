import 'package:flutter/material.dart';

class myThemeData{
  static Color lightPrimaryColor=Color(0xFFB7935F);
  static Color darkPrimaryColor=Color(0xFF141A2E);
  static Color yellowColor=Color(0xFFFACC1D);
  static ThemeData lightTheme=ThemeData(
      primaryColor: lightPrimaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        primary: lightPrimaryColor,
        onPrimary: Color(0xFFffffff),
        secondary: Color(0xFFFACC1D),
        onSecondary: Colors.black,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 42,
        ),
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black)),
      textTheme: TextTheme(
        titleMedium: TextStyle(
color: Colors.black ,
          fontSize: 26,
          fontWeight: FontWeight.bold
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
           fontWeight: FontWeight.bold,
          fontSize: 25
        ),
          displaySmall: TextStyle(
              fontSize: 20,
              color: Colors.black
          ),
          labelMedium: TextStyle(
              color: lightPrimaryColor,
              fontSize: 26,
              fontWeight: FontWeight.bold
          )
      ),
      dividerColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent);

  static ThemeData darkTheme=ThemeData(
      primaryColor: darkPrimaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimaryColor,
        primary: darkPrimaryColor,
        onPrimary: Color(0xFFffffff),
        secondary: yellowColor,
        onSecondary: Colors.black,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,
        selectedItemColor: yellowColor,
        selectedIconTheme: IconThemeData(
          color: yellowColor,
          size: 42,
        ),
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black)),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),
          bodyMedium: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        displaySmall: TextStyle(
          fontSize: 20,
          color: yellowColor
        ),
        labelMedium: TextStyle(
          color: yellowColor,
          fontSize: 26,
          fontWeight: FontWeight.bold
        )
      ),
      dividerColor: yellowColor
      ,
      scaffoldBackgroundColor: Colors.transparent);
}