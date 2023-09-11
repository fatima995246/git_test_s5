import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColore = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color WhiteColor = Colors.white;

  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryLight,
      appBarTheme: AppBarTheme(
          centerTitle: true, backgroundColor: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: blackColore)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColore,
          unselectedItemColor: WhiteColor,
          showUnselectedLabels: true,
          showSelectedLabels: true));
}