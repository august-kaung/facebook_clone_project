import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:testing_app/main_testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();

  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en', '');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('my', ''), // Myanmar
      ],
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).title), // Use localized title
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppLocalizations.of(context).greeting), // Use localized greeting
          DropdownButton<Locale>(
            value: Localizations.localeOf(context),
            items: [
              DropdownMenuItem(
                value: const Locale('en', ''),
                child: const Text('English'),
              ),
              DropdownMenuItem(
                value: const Locale('my', ''),
                child: const Text('Myanmar'),
              ),
            ],
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                setState(() {
                  // Rebuild the app with the new locale
                  MyApp.of(context)?.setLocale(newLocale);
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

