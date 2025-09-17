import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solid_hello/app/features/hello_there/services/color_service.dart';
import 'package:solid_hello/app/features/positive_phrases/presentation/widgets/positive_text.dart';
import 'package:solid_hello/app/features/positive_phrases/services/positive_phrases_service.dart';

/// Page that shows a centered positive phrase with a colored background.
/// - Tap anywhere: generates a new background color and a new random phrase.
/// - Long press: copies the current phrase to the clipboard.
class PositivePhrasesPage extends StatefulWidget {
  /// Creates the positive phrases screen.
  const PositivePhrasesPage({super.key});

  @override
  State<PositivePhrasesPage> createState() => _PositivePhrasesPageState();
}

/// State for [PositivePhrasesPage], handling color/phrase generation and copy UX.
class _PositivePhrasesPageState extends State<PositivePhrasesPage> {
  final _colors = ColorService();
  final _phrases = PhrasesService();

  final Color _bg = Colors.white;
  Color _fg = Colors.black54;
  late String _phrase;

  @override
  void initState() {
    super.initState();
    _phrase = _phrases.random();
    _fg = _colors.readableOn(_bg);
  }

  /// Tap: change random phrase in the service.
  void _onTap() {
    setState(() {
      _phrase = _phrases.random();
    });
  }

  /// Long-press: copy the current phrase and show confirmation.
  Future<void> _onLongPress() async {
    await Clipboard.setData(ClipboardData(text: _phrase));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied, use this "$_phrase" wisely and kindly!'),
        duration: const Duration(milliseconds: 1800),
      ),
    );
  }

  /// Builds the positive phrases experience with full-screen InkWell.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
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
              curve: Curves.easeOutCubic,
              color: _bg,
              child: Center(
                child: PositiveText(phrase: _phrase, fg: _fg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
