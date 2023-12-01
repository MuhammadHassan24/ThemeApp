import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ThemeManager extends BaseViewModel {
  ThemeMode _thememode = ThemeMode.light;
  get thememode => _thememode;
  changeTheme(bool isDark) {
    _thememode = isDark ? ThemeMode.dark : ThemeMode.light;
    rebuildUi();
  }
}
