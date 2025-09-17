import 'package:flutter/material.dart';

/// Widget that displays a positive phrase with styling.
class PositiveText extends StatelessWidget {
  /// Phrase to display.
  final String phrase;

  /// Foreground (text) color chosen for readability.
  final Color fg;

  /// Internal phrase copy.
  const PositiveText({required this.phrase, required this.fg, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text(
          phrase,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: fg,
            fontSize: 24,
            fontStyle: FontStyle.italic,
            height: 1.35,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Tap to change\nLong-press to copy',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Bangers',
            color: fg.withAlpha((0.82 * 255).toInt()),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
