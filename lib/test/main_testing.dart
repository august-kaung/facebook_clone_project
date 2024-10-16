import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Welcome',
      'greeting': 'Hello, how are you?',
    },
    'my': {
      'title': 'ကြိုဆိုပါတယ်',
      'greeting': 'မင်္ဂလာပါ၊ နေကောင်းလား?',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }

  String get greeting {
    return _localizedValues[locale.languageCode]!['greeting']!;
  }
}
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'my'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
