import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:financials/data/services/models/level/level_model.dart';
import 'package:financials/data/services/models/page/page_model.dart';
import 'package:financials/data/services/models/level_list/level_list_model.dart';

class DataService {
  Future<List<LevelModel>> fetchLevels() async {
    final response = await rootBundle.loadString('assets/levels.json');
    final jsonMap = jsonDecode(response);
    // print(jsonMap);
    /*List<LevelModel> levels = List<LevelModel>.from(
      jsonMap.map((model) => PageModel.fromJson(model)),
    ); */
    final levels = LevelListModel.fromJson({'levelList': jsonMap});
    return levels.levelList;
  }

  //What type of id for level?
  Future<List<PageModel>> fetchPages(String levelId) async {
    final String response = await rootBundle.loadString("assets/levels.json");
    final jsonMap = jsonDecode(response);
    final levels = LevelListModel.fromJson({'levelList': jsonMap});
    List<PageModel> pages = [];
    for (final level in levels.levelList) {
      if (level.levelId == levelId) {
        pages = level.pages;
      }
    }
    return pages;
  }
}
