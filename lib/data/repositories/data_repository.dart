import '../services/data_service.dart';
import '../services/models/level/level_model.dart';
import '../services/models/page/page_model.dart';
import '../services/models/question/question_model.dart';

class DataRepository {
  DataRepository({required this._dataService});

  final DataService _dataService;

  Future<List<LevelModel>> retrieveLevels() async {
    return await _dataService.retrieveLevels();
  }

  Future<List<PageModel>> retrievePages(String levelId) async {
    return await _dataService.retrievePages(levelId);
  }

  Future<List<QuestionModel>> retrieveQuestions(String levelId) async {
    return await _dataService.retrieveQuestions(levelId);
  }
}
