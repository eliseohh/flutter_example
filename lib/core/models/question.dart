class Option {
  final String label; // 'a', 'b', etc.
  final String text;
  Option({required this.label, required this.text});
}

class Question {
  final String question;
  final List<Option> options;
  final List<String> correctAnswers;
  final int points;
  final bool isMultiple;
  Question({
    required this.question,
    required this.options,
    required this.correctAnswers,
    required this.points,
    required this.isMultiple,
  });
}
