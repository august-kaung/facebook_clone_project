import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier {
  Locale _locale = Locale('en', '');

  Locale get locale => _locale;

  void changeLanguage(Locale newLocale) {
    _locale = newLocale;
    notifyListeners(); // Notify listeners about the change
  }
}