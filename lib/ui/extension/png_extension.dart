import 'package:flutter/material.dart';

/// Image asset to path with name
class PngImage extends StatelessWidget {
  /// const
  const PngImage({required this.name, super.key});

  /// Image name
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath);
  }

  String get _nameWithPath => 'assets/images/$name.png';
}
