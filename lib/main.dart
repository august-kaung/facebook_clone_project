import 'package:flutter/material.dart';
import 'theme.dart'; // Import your AppThemes class

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Default theme
  bool isCustomTheme = false; // Flag for custom theme

  // Method to toggle between different themes
  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
      isCustomTheme = false; // Disable custom theme if not chosen
    });
  }

  // Method for applying custom theme
  void _applyCustomTheme() {
    setState(() {
      isCustomTheme = true; // Enable custom theme
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Themes App',
      // Apply the light, dark, or custom theme based on the flag
      theme: isCustomTheme ? AppThemes.customTheme : AppThemes.lightTheme, // Apply custom or light theme
      darkTheme: AppThemes.darkTheme, // Dark theme
      themeMode: isCustomTheme ? ThemeMode.light : _themeMode, // Use custom theme or regular theme modes
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Theme Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Select a theme:'),
              ElevatedButton(
                onPressed: () => _toggleTheme(ThemeMode.light),
                child: Text('Light Theme'),
              ),
              ElevatedButton(
                onPressed: () => _toggleTheme(ThemeMode.dark),
                child: Text('Dark Theme'),
              ),
              ElevatedButton(
                onPressed: () => _toggleTheme(ThemeMode.system),
                child: Text('System Default Theme'),
              ),
              ElevatedButton(
                onPressed: _applyCustomTheme, // Apply custom theme when button is clicked
                child: Text('Custom Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
