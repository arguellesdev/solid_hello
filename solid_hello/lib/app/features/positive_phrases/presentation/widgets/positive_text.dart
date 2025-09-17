import 'package:flutter/material.dart';
import 'package:solid_hello/app/features/positive_phrases/models/phrase.dart';

/// Widget that displays a positive phrase with its author, styled with the given foreground color.
class PositiveText extends StatelessWidget {
  /// The phrase to display.
  final Phrase phrase;

  /// The color for the text.
  final Color fg;

  /// Creates a PositiveText widget with the specified [phrase] and [fg] color.
  const PositiveText({required this.phrase, required this.fg, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          phrase.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: fg,
            fontSize: 24,
            fontStyle: FontStyle.italic,
            height: 1.35,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          '- ${phrase.author}',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: fg.withAlpha((0.85 * 255).toInt()),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Getting inspired?\n just long-press to copy it!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Bangers',
            color: fg.withAlpha((0.75 * 255).toInt()),
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
