import 'package:e_course_ui/ui/theme/light_theme.dart';
import 'package:e_course_ui/ui/view/get_start_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book-Store',
      home: const GetStartView(),
      theme: bookStoreTheme,
    );
  }
}
