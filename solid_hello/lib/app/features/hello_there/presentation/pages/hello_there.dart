import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solid_hello/app/features/hello_there/services/color_service.dart';

class HelloThere extends StatefulWidget {
  const HelloThere({super.key});

  @override
  State<HelloThere> createState() => _HelloThereState();
}

class _HelloThereState extends State<HelloThere> {
  final _cs = ColorService();
  Color _bgColor = Colors.white70;
  Color _textColor = Colors.black54;

  void _onTap() {
    setState(() {
      _bgColor = _cs.generateRandomColor();
      _textColor = _cs.readableOn(_bgColor);
    });
  }

  Future<void> _onLongPress() async {
    final hex = _cs.hex(_bgColor);
    await Clipboard.setData(ClipboardData(text: hex));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Done!  $hex is now on your clipboard'),
        duration: const Duration(milliseconds: 1800),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hex = _cs.hex(_bgColor);

    return Scaffold(
      backgroundColor: _bgColor,
      body: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _onTap,
          onLongPress: _onLongPress,
          child: SizedBox.expand(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hello There!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SourGummy',
                      fontWeight: FontWeight.w700,
                      fontSize: 48,
                      color: _textColor.withAlpha((0.9 * 255).toInt()),
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
                      color: _textColor,
                      fontFeatures: const [FontFeature.tabularFigures()],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Love the color?\nTap to get it',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Bangers',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: _textColor.withAlpha((0.7 * 255).toInt()),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Psst psst: you are a long-press distance to copy it!',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: 'Bangers',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: _textColor.withAlpha((0.6 * 255).toInt()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
