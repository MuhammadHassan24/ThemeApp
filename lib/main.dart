import 'package:flutter/material.dart';
import 'package:themeandlangapp/screens/home/home_view.dart';
import 'package:themeandlangapp/screens/theme/theme_controller.dart';
import 'package:themeandlangapp/screens/theme/theme_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.thememode,
      home: HomeView(),
    );
  }
}
