import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryDark = Color(0xff141A2E);
  static Color primaryLight = Color(0xffB7935F);
  static Color WhiteColor = Color(0xffffffff);
  static Color yelloColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryLight,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor)),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: blackColor),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: blackColor),
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColor,
          unselectedItemColor: WhiteColor,
          showUnselectedLabels: true,
          showSelectedLabels: true));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryDark,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: WhiteColor)),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: WhiteColor),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: WhiteColor),
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: yelloColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yelloColor,
          unselectedItemColor: WhiteColor,
          showUnselectedLabels: true,
          showSelectedLabels: true));
}
