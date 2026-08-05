import 'package:flutter/cupertino.dart';

import 'package:financials/data/services/models/level/level_model.dart';
import 'package:financials/data/repositories/data_repository.dart';

class LevelListViewModel extends ChangeNotifier {
  LevelListViewModel({required this.levels, required this._dataRepository}) {
    fetchLevels();
  }

  DataRepository _dataRepository;

  List<LevelModel> levels = [];

  Future<void> fetchLevels() async {
    levels = await _dataRepository.fetchLevels();
    notifyListeners();
  }
}
