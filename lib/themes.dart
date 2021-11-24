import 'package:flutter/material.dart';

const primaryDark = Color(0xFF0A0E21);
const cardBGDark = Color(0xFF1D1E33);
const cardBGDarkActive = Color(0xFF36375A);
const bottomBtnBG = Color(0xFFEB1555);

var primaryTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: primaryDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryDark,
  ),
);
