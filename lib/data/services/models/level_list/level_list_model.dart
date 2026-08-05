import 'package:freezed_annotation/freezed_annotation.dart';

import '../level/level_model.dart';

part 'level_list_model.g.dart';
part 'level_list_model.freezed.dart';

@freezed
abstract class LevelListModel with _$LevelListModel {
  factory LevelListModel({@Default([]) List<LevelModel> levelList}) =
      _LevelListModel;

  factory LevelListModel.fromJson(Map<String, dynamic> json) =>
      _$LevelListModelFromJson(json);
}
