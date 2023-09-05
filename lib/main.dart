import 'package:flutter/material.dart';
import 'package:git_s5/homescreen.dart';

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
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
