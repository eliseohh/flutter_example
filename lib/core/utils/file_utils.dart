import 'dart:io';
import '../models/question.dart';

class FileUtils {
  // Lee PSV y devuelve lista de preguntas
  static Future<List<Question>> readPSV(String path) async {
    final file = File(path);
    final lines = await file.readAsLines();
    List<Question> questions = [];

    // Ignora encabezado
    for (var i = 1; i < lines.length; i++) {
      final parts = lines[i].split('|');
      final questionText = parts[0];
      final options = [
        Option(label: 'a', text: parts[1].substring(3)),
        Option(label: 'b', text: parts[2].substring(3)),
        Option(label: 'c', text: parts[3].substring(3)),
        Option(label: 'd', text: parts[4].substring(3)),
      ];
      final correct = parts[5].split(',');
      final points = int.parse(parts[6]);
      final isMultiple = parts[7].toLowerCase() == 'true';

      questions.add(Question(
        question: questionText,
        options: options,
        correctAnswers: correct,
        points: points,
        isMultiple: isMultiple,
      ));
    }
    return questions;
  }
}
