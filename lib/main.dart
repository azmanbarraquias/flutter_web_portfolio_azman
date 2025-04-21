import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/pages/home_page.dart';

import 'dart:js_interop';

@JS()
external void clearLocalStorage();

@JS()
external void clearSessionStorage();

void main() {
  clearBrowserCache();
  runApp(const MyApp());
}

void clearBrowserCache() {
  clearLocalStorage();
  clearSessionStorage();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Azman Barraquias',
      // Light theme
      theme: ThemeData.light(),
      // Dark theme
      darkTheme: ThemeData.dark(),
      // Set theme based on system preference
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
