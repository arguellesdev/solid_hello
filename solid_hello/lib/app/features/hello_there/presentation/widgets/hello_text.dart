import 'package:flutter/material.dart';
import 'package:solid_hello/app/features/positive_phrases/presentation/pages/positive_phrases_page.dart';
import 'package:solid_hello/app/shared/widgets/app_elevated_button.dart';

/// HelloText widget displays the main content of the HelloThere page, including title and color information.
class HelloText extends StatelessWidget {
  /// The color of the title text.
  final Color titleColor;

  /// The hex representation of the current background color.
  final String hex;

  /// The color of the supporting text.
  final Color textColor;

  /// The color of the button icon.
  final Color buttonIconColor;

  /// Creates a HelloText widget.
  const HelloText({
    required this.titleColor,
    required this.hex,
    required this.textColor,
    required this.buttonIconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Hello There',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SourGummy',
            fontWeight: FontWeight.w700,
            fontSize: 48,
            color: titleColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          hex,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Bangers',
            fontWeight: FontWeight.w400,
            fontSize: 36,
            color: textColor,
            fontFeatures: const [FontFeature.tabularFigures()],
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Love the color?\nTap to get it',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Bangers',
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: textColor.withAlpha((0.82 * 255).toInt()),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Psst psst: you are a long-press distance to copy it!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Bangers',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: textColor.withAlpha((0.8 * 255).toInt()),
          ),
        ),
        const SizedBox(height: 24),
        CustomElevatedButton(
          icon: Icon(Icons.hub, size: 32, color: buttonIconColor),
          destination: const PositivePhrasesPage(),
        ),
      ],
    );
  }
}
