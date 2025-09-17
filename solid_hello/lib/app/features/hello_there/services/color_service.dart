import 'dart:math';

import 'package:flutter/material.dart';

/// Color service handling color generation and contrast calculations separating from the main feature presentation logic.
class ColorService {
  final Random _rng = Random();

  /// Generates a random opaque color.
  Color generateRandomColor() {
    return Color.fromARGB(
      255,
      _rng.nextInt(256),
      _rng.nextInt(256),
      _rng.nextInt(256),
    );
  }

  /// Generates a random opaque 24-bit color.
  Color generate24BitColor() {
    final rgb = _rng.nextInt(1 << 24);
    return Color(0xFF000000 | rgb);
  }

  /// Determines a readable text color (black or white) based on the background color's luminance.
  Color readableOn(Color bg) {
    return bg.computeLuminance() > 0.6 ? Colors.black : Colors.white;
  }

  /// Converts a [Color] to its hexadecimal string representation (e.g., #RRGGBB).
  String hex(Color color) {
    return '#${color.toARGB32().toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }
}
