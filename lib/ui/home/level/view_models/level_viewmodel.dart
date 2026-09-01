import 'package:flutter/cupertino.dart';
import 'package:financials/data/repositories/data_repository.dart';

class LevelViewModel extends ChangeNotifier {
  LevelViewModel({required this._dataRepository});

  DataRepository _dataRepository;
}
