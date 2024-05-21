class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctOption;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctOption,
  }) {
    if (correctOption < 0 || correctOption >= options.length) {
      throw ArgumentError('correctOption index out of range');
    }
  }
}
