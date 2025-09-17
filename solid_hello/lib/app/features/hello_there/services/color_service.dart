import 'dart:math';

import 'package:flutter/material.dart';

/// Color service handling color generation and contrast calculations separating from the main feature presentation logic.
class ColorService {
  final Random _rng = Random();

  Color generateRandomColor() {
    return Color.fromARGB(
      255,
      _rng.nextInt(256),
      _rng.nextInt(256),
      _rng.nextInt(256),
    );
  }

  Color generate24BitColor() {
    final rgb = _rng.nextInt(1 << 24);
    return Color(0xFF000000 | rgb);
  }

  Color readableOn(Color bg) {
    return bg.computeLuminance() > 0.6 ? Colors.black : Colors.white;
  }

  String hex(Color color) {
    return '#${color.toARGB32().toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }
}
