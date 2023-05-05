import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.purple,
  Colors.blueAccent,
  Colors.orange,
  Colors.green
];

class AppTheme {
  final int selectedColor;

  const AppTheme({
    this.selectedColor = 0
  }) : assert(selectedColor >= 0, 'selectedColor must be greater than 0'),
       assert(selectedColor < colorList.length, 'selectedColor must be less than $colorList.length');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      backgroundColor: colorList[selectedColor],
      foregroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      centerTitle: false
    ),
  );
  
}