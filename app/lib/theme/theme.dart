import 'package:flutter/material.dart';

abstract class PaletteColors {
  static Color primaryColors = const Color.fromARGB(255, 194, 7, 7);
  static Color colorTitleTextItem = const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundCardColor = Colors.white60;
  static Color textColor = const Color.fromARGB(216, 0, 0, 0);
}

class ClaroThemeData {
  static Color get primaryColor => PaletteColors.primaryColors;
  static Color get disabledColor => Colors.grey;
  static ColorScheme get colorScheme =>
      ColorScheme.fromSeed(seedColor: PaletteColors.primaryColors);
  static Color get cardColor => PaletteColors.backgroundCardColor;
  static bool get useMaterial3 => true;

  static TextTheme get textTheme => TextTheme(
    bodySmall: TextStyle(
      color: PaletteColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: PaletteColors.textColor,
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: PaletteColors.textColor,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
  );

  static AppBarTheme get appBarTheme => AppBarTheme(
    backgroundColor: PaletteColors.primaryColors,
    iconTheme: IconThemeData(
      color: PaletteColors.colorTitleTextItem,
      opacity: .9,
      weight: 1,
      applyTextScaling: true,
      size: 20,
    ),
    titleTextStyle: TextStyle(
      color: PaletteColors.colorTitleTextItem,
      decoration: TextDecoration.none,
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: IconThemeData(
      color: PaletteColors.colorTitleTextItem,
      opacity: .9,
      weight: 1,
      applyTextScaling: true,
      size: 20,
    ),
  );
}
