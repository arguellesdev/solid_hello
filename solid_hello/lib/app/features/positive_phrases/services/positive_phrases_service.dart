import 'dart:math';

import 'package:solid_hello/app/features/positive_phrases/models/phrase.dart';

/// Provides short inspirational phrases inspired by science and business.
class PhrasesService {
  /// Creates a PhrasesService instance.
  PhrasesService({Random? rng}) : _rng = rng ?? Random();

  final Random _rng;

  static const List<Phrase> _phrases = [
    // Science & discovery
    Phrase(
      '“The future is in our genes, and the power to edit them.”',
      'Jennifer Doudna',
    ),
    Phrase(
      '“Imagination is more important than knowledge.”',
      'Albert Einstein',
    ),
    Phrase(
      '“Nothing in life is to be feared, it is only to be understood.”',
      'Marie Curie',
    ),
    Phrase(
      '“The first principle is that you must not fool yourself.”',
      'Richard Feynman',
    ),

    // Computing & logic
    Phrase('“Wear your failure as a badge of honor.”', 'Sundar Pichai'),
    Phrase(
      '“Those who can imagine anything, can create the impossible.”',
      'Alan Turing',
    ),
    Phrase('“Done is better than perfect.”', 'Sheryl Sandberg'),
    Phrase('“Programs must be written for people to read.”', 'Harold Abelson'),
    Phrase(
      '“The people who are crazy enough to think they can change the world are the ones who do.”',
      'Steve Jobs',
    ),

    // Business & philosophy
    Phrase(
      '“In a world deluged by irrelevant information, clarity is power.”',
      'Yuval Noah Harari',
    ),
    Phrase('“Ego is the enemy.”', 'Ryan Holiday'),
    Phrase('“Discipline is destiny.”', 'Ryan Holiday'),
    Phrase(
      '“Change is hard at first, messy in the middle and gorgeous at the end.”',
      'Robin Sharma',
    ),
    Phrase(
      '“Leadership is not about a title or a designation. It’s about impact, influence and inspiration.”',
      'Robin Sharma',
    ),

    // Spanish
    Phrase(
      '“El dolor es inevitable, pero el sufrimiento es opcional.”',
      'Daniel Habif',
    ),
    Phrase('“El miedo limita más que los fracasos.”', 'Daniel Habif'),
    Phrase('“Un sueño sin disciplina es solo un deseo.”', 'Yokoi Kenji'),
    Phrase(
      '“La pobreza no está en el bolsillo, está en la mente.”',
      'Yokoi Kenji',
    ),
    Phrase(
      '“Disciplina tarde o temprano vencerá a la inteligencia.”',
      'Yokoi Kenji',
    ),
  ];

  /// Returns a random phrase.
  Phrase random() => _phrases[_rng.nextInt(_phrases.length)];

  /// Exposes all phrases.
  List<Phrase> get all => _phrases;
}
