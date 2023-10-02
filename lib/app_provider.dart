import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLocale = "en";

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;

    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDark()
        ? "assets/images/background_dark.png"
        : "assets/images/background_light.png";
  }

  String splashBackground() {
    return isDark()
        ? "assets/images/splash_dark.png"
        : "assets/images/splash_background.png";
  }

  String headOfSebha() {
    return isDark()
        ? "assets/images/head_dark.png"
        : "assets/images/head_of_sebha.png";
  }

  String bodyOfSebha() {
    return isDark()
        ? "assets/images/body_dark.png"
        : "assets/images/body_of_sebha.png";
  }

  changeLanguage(String newLanguage) {
    if (currentLocale == newLanguage) return;
    currentLocale = newLanguage;

    notifyListeners();
  }
}
