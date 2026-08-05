import 'package:flutter/cupertino.dart';

import 'package:financials/data/repositories/data_repository.dart';
import 'package:financials/data/services/models/page/page_model.dart';

class PageViewModel extends ChangeNotifier {
  PageViewModel({
    required this._dataRepository,
    required this.text,
    required this.levelId,
    required this.pageNumber,
    required this.pages,
  }) {
    fetchPages(levelId);
  }

  String text;
  final DataRepository _dataRepository;
  int pageNumber = 1;
  String levelId;
  List<PageModel> pages;

  void nextPage() {
    pageNumber++;
    notifyListeners();
  }

  Future<void> fetchPages(String levelId) async {
    pages = await _dataRepository.fetchPages(levelId);
    notifyListeners();
  }
}
