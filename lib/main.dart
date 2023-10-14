import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_s5/Home/homescreen.dart';
import 'package:git_s5/Home/quran/surah_details_screen.dart';
import 'package:git_s5/MyTheme.dart';
import 'package:git_s5/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home/hadeth/hadeth_details_screen.dart';
import 'Home/tasbeh/tasbeh.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final prefsTheme = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(prefs, prefsTheme),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      initialRoute: homescreen.routeName,
      routes: {
          homescreen.routeName: (context) => homescreen(),
          Tasbeh_tab.routeName: (context) => Tasbeh_tab(),
          SurahDetailsScreen.routeName: (context) => SurahDetailsScreen(),
          HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
        },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale(provider.appLanguage),
      darkTheme: MyTheme.darkTheme,
        themeMode: provider.appTheme);
  }
}
