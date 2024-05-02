import 'package:flutter/material.dart';

class LightTheme {
  late final ThemeData lightTheme;

  LightTheme() {
    lightTheme = ThemeData.light().copyWith(
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Colors.grey.withOpacity(.7),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
              borderRadius: const BorderRadius.all(Radius.circular(10)))),
      hintColor: Colors.grey.withOpacity(.7),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: const StadiumBorder(),
              side: BorderSide(color: Colors.grey.withOpacity(.4)))),
    );
  }
}