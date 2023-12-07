import 'package:flutter/material.dart';

class Themes {
  static ThemeData customTheme1 = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: Colors.green),
    colorScheme: const ColorScheme.light().copyWith(secondary: Colors.green),
  );
  static ThemeData customTheme2 = ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(color: Colors.teal.shade700),
      colorScheme:
          const ColorScheme.light().copyWith(secondary: Colors.teal.shade700),
      buttonTheme:
          ButtonThemeData().copyWith(buttonColor: Colors.teal.shade700));
}
