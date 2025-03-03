import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio_azman/pages/home_page.dart';

void main() {
  runApp(const MyApp());
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
