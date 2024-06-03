import 'package:flutter/material.dart';

const kShrinePurple = Color(0xFF5D1049);
const kShrinePink50 = Color(0xFFFEEAE6);
const kShrinePink100 = Color(0xFFFEDBD0);
const kShrinePink300 = Color(0xFFFBB8AC);
const kShrinePink400 = Color(0xFFEAA4A4);
const kShrineBrown900 = Color(0xFF442B2D);
const kShrineErrorRed = Color(0xFFC5032B);
const kShrineSurfaceWhite = Color(0xFFFFFBFA);
const kShrineBackgroundWhite = Colors.white;

ThemeData buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePurple,
      secondary: kShrinePurple,
      error: kShrineErrorRed,
    ),
    scaffoldBackgroundColor: kShrineSurfaceWhite,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrinePurple,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      floatingLabelStyle: TextStyle(
        color: kShrinePurple,
      ),
    ),
  );
}
