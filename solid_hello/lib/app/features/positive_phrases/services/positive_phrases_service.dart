import 'dart:math';

/// Provides short inspirational phrases inspired by science,
/// and modern business thinkers.
class PhrasesService {
  /// Allows injecting a custom [Random] instance for testing.
  PhrasesService({Random? rng}) : _rng = rng ?? Random();

  final Random _rng;

  static const List<String> _phrases = [
    // Science & discovery
    '“Somewhere, something incredible is waiting to be known.”\nCarl Sagan',
    '“Imagination is more important than knowledge.”\nAlbert Einstein',
    '“Nothing in life is to be feared, it is only to be understood.”\nMarie Curie',
    '“The first principle is that you must not fool yourself.”\nRichard Feynman',

    // Computing & logic
    '“Those who can imagine anything, can create the impossible.”\nAlan Turing',
    '“Programs must be written for people to read.”\nHarold Abelson',

    // Business & philosophy
    '“In a world deluged by irrelevant information, clarity is power.”\nYuval Noah Harari',
    '“Ego is the enemy.”\nRyan Holiday',
    '“Discipline is destiny.”\nRyan Holiday',
    '“Change is hard at first, messy in the middle and gorgeous at the end.”\nRobin Sharma',
    '“Leadership is not about a title or a designation. It’s about impact, influence and inspiration.”\nRobin Sharma',

    /// Spanish
    '“El dolor es inevitable, pero el sufrimiento es opcional.”\nDaniel Habif',
    '“El miedo limita más que los fracasos.”\nDaniel Habif',
    '“Un sueño sin disciplina es solo un deseo.”\nYokoi Kenji',
    '“La pobreza no está en el bolsillo, está en la mente.”\nYokoi Kenji',
    '“Disciplina tarde o temprano vencerá a la inteligencia.”\nYokoi Kenji',
  ];

  /// Returns a random phrase from the internal list.
  String random() => _phrases[_rng.nextInt(_phrases.length)];

  /// Exposes all phrases (useful for testing).
  List<String> get all => _phrases;
}
