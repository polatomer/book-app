import 'package:flutter/material.dart';

final bookStoreTheme = ThemeData(
  fontFamily: 'Lora',
  inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: Colors.grey.withOpacity(.7),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
          borderRadius: const BorderRadius.all(Radius.circular(10)))),
  hintColor: Colors.grey.withOpacity(.7),
);
