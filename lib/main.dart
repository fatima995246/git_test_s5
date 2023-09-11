import 'package:flutter/material.dart';
import 'package:git_s5/Home/homescreen.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:git_s5/sebhaScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: homescreen.routeName,
      routes: {
        homescreen.routeName: (context) => homescreen(),
        sebhaScreen.routeName: (context) => sebhaScreen(),
      },
      theme: MyTheme.lighttheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
