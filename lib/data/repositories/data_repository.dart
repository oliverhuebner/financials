import '../services/data_service.dart';
import '../services/models/level/level_model.dart';
import '../services/models/page/page_model.dart';

class DataRepository {
  DataRepository({required this._dataService});

  final DataService _dataService;

  Future<List<LevelModel>> fetchLevels() async {
    return await _dataService.fetchLevels();
  }

  Future<List<PageModel>> fetchPages(String levelId) async {
    return await _dataService.fetchPages(levelId);
  }
}
