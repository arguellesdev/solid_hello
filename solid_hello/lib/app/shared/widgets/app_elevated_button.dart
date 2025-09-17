import 'package:flutter/material.dart';

/// A standardized elevated button that navigates to a specified [destination] when pressed.
class CustomElevatedButton extends StatelessWidget {
  /// The icon displayed on the button.
  final Icon icon;

  /// Destination page widget to push.
  final Widget destination;

  /// Creates a standardized elevated button that navigates to [destination] when pressed.
  const CustomElevatedButton({
    required this.icon,
    required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => destination));
      },
      child: icon,
    );
  }
}
