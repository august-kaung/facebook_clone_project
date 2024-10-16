import 'package:flutter/material.dart';

class AppThemes {
  

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    appBarTheme:const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: customTextTheme,
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey[900],
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: customTextTheme,
  );

  // Custom Theme
  static final ThemeData customTheme = ThemeData(
    primaryColor: Colors.purple,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.purple,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: customTextTheme,
  );
}
final TextTheme customTextTheme =const TextTheme(
    displayLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    displayMedium: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    displaySmall: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      color: Colors.blueAccent,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurpleAccent,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.purple,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black54,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black54,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
