import 'dart:math';

/// Provides short inspirational phrases inspired by science,
/// and modern business thinkers.
class PhrasesService {
  /// Allows injecting a custom [Random] instance for testing.
  PhrasesService({Random? rng}) : _rng = rng ?? Random();

  final Random _rng;

  static const List<String> _phrases = [
    // Science & discovery
    '“The future is in our genes,\nand the power to edit them.”\nJennifer Doudna',
    '“Imagination is more important than knowledge.”\nAlbert Einstein',
    '“Nothing in life is to be feared,\nit is only to be understood.”\nMarie Curie',
    '“The first principle is that you must\nnot fool yourself.”\nRichard Feynman',

    // Computing & logic
    '“Wear your failure as a badge of honor.”\nSundar Pichai',
    '“Those who can imagine anything,\ncan create the impossible.”\nAlan Turing',
    '“Done is better than perfect.”\nSheryl Sandberg',
    '“Programs must be written\nfor people to read.”\nHarold Abelson',
    '“The people who are crazy enough to think they can change the world\nare the ones who do.”\nSteve Jobs',

    // Business & philosophy
    '“In a world deluged by irrelevant information,\nclarity is power.”\nYuval Noah Harari',
    '“Ego is the enemy.”\nRyan Holiday',
    '“Discipline is destiny.”\nRyan Holiday',
    '“Change is hard at first, messy in the middle\nand gorgeous at the end.”\nRobin Sharma',
    '“Leadership is not about a title or a designation. It’s about impact, influence and inspiration.”\nRobin Sharma',

    /// Spanish
    '“El dolor es inevitable,\npero el sufrimiento es opcional.”\nDaniel Habif',
    '“El miedo limita más que los fracasos.”\nDaniel Habif',
    '“Un sueño sin disciplina es solo un deseo.”\nYokoi Kenji',
    '“La pobreza no está en el bolsillo,\nestá en la mente.”\nYokoi Kenji',
    '“Disciplina tarde o temprano\nvencerá a la inteligencia.”\nYokoi Kenji',
  ];

  /// Returns a random phrase from the internal list.
  String random() => _phrases[_rng.nextInt(_phrases.length)];

  /// Exposes all phrases (useful for testing).
  List<String> get all => _phrases;
}
