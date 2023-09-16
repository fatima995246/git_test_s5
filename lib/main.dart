import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_s5/Home/homescreen.dart';
import 'package:git_s5/Home/quran/surah_details_screen.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:git_s5/providers/app_config_provider.dart';
import 'package:git_s5/sebhaScreen.dart';
import 'package:provider/provider.dart';

import 'Home/hadeth/hadeth_details_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
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
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale(provider.appLanguage),
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.appTheme,
    );
  }
}
