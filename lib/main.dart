import 'package:flutter/material.dart';
import 'package:git_s5/Home/homescreen.dart';
import 'package:git_s5/sebhaScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
      debugShowCheckedModeBanner: false,
    );
  }
}
