import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  //data
  String appLanguage = 'en';

  ThemeMode appTheme = ThemeMode.dark;

  void changeLanguage(String newlanguage) {
    if (appLanguage == newlanguage) {
      return;
    }
    appLanguage = newlanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}
