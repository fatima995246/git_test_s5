import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColore = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color WhiteColor = Colors.white;

  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryLight,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColore)),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: blackColore),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: blackColore),
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: blackColore)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColore,
          unselectedItemColor: WhiteColor,
          showUnselectedLabels: true,
          showSelectedLabels: true));
}
