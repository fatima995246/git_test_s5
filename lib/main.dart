import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_s5/Home/homescreen.dart';
import 'package:git_s5/Home/quran/surah_details_screen.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:git_s5/sebhaScreen.dart';

import 'Home/hadeth/hadeth_details_screen.dart';

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
        SurahDetailsScreen.routeName: (context) => SurahDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lighttheme,
      debugShowCheckedModeBanner: false,
      locale: Locale('ar'),
    );
  }
}
