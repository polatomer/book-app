import 'package:flutter/material.dart';

/// Image asset to path with name
class PngImage extends StatelessWidget {
  /// const
  const PngImage({required this.name, this.color, super.key});

  /// Image name
  final String name;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      color: color,
    );
  }

  String get _nameWithPath => 'assets/png/ic_$name.png';
}
