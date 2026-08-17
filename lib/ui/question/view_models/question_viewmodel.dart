import 'package:flutter/cupertino.dart';
import 'package:financials/data/repositories/data_repository.dart';
import 'package:financials/data/services/models/question/question_model.dart';

class QuestionViewModel extends ChangeNotifier {
  QuestionViewModel({
    required int questionNumber,
    required this.questions,
    required this.text,
    required this.levelId,
    required this.repository,
  }) {
    retrieveQuestions();
  }

  int questionNumber = 1;
  List<QuestionModel> questions = [];
  String text;
  String levelId;
  DataRepository repository;

  Future<void> retrieveQuestions() async {
    questions = await repository.retrieveQuestions(levelId);
    print(questions);
    notifyListeners();
  }
}
