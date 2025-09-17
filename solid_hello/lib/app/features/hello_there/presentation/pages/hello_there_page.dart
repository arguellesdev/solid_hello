import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solid_hello/app/features/hello_there/presentation/widgets/hello_content.dart';
import 'package:solid_hello/app/features/hello_there/services/color_service.dart';

/// The main page of the application displaying a tappable area that changes background color and shows its hex code.
/// - Tap anywhere to change the background color.
/// - Long press to copy the current color hex value to the clipboard.
///
class HelloThere extends StatefulWidget {
  /// Creates the HelloThere screen.
  const HelloThere({super.key});

  @override
  State<HelloThere> createState() => _HelloThereState();
}

/// State class for HelloThere widget managing background and text colors.
class _HelloThereState extends State<HelloThere> {
  final _cs = ColorService();
  Color _bgColor = Colors.white70;
  Color _textColor = Colors.black54;

  /// Handles tap events by generating a new random background color and updating the text color for readability.
  void _onTap() {
    setState(() {
      _bgColor = _cs.generate24BitColor(); //_cs.generateRandomColor();
      _textColor = _cs.readableOn(_bgColor);
    });
  }

  /// Handles long press events by copying the current background color hex value to the clipboard.
  Future<void> _onLongPress() async {
    final hex = _cs.hex(_bgColor);
    await Clipboard.setData(ClipboardData(text: hex));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('All set! #$hex is now on your clipboard'),
        duration: const Duration(milliseconds: 1800),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hex = _cs.hex(_bgColor);

    return Scaffold(
      // backgroundColor: _bgColor,
      body: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _onTap,
          onLongPress: _onLongPress,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          child: SizedBox.expand(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              curve: Curves.bounceInOut,
              color: _bgColor,
              child: Center(
                child: HelloText(
                  titleColor: _textColor.withAlpha((0.9 * 255).toInt()),
                  hex: hex,
                  textColor: _textColor.withAlpha((0.8 * 255).toInt()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
