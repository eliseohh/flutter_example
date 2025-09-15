import 'dart:math';

import '../models/question.dart';

class ShuffleUtils {
  static List<Option> shuffleOptions(List<Option> original) {
    List<Option> shuffled = List.from(original);
    shuffled.shuffle(Random());
    return shuffled;
  }
}
