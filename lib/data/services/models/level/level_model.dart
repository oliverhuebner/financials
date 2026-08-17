import 'package:freezed_annotation/freezed_annotation.dart';

import '../page/page_model.dart';
import '../question/question_model.dart';

part 'level_model.freezed.dart';
part 'level_model.g.dart';

@freezed
abstract class LevelModel with _$LevelModel {
  factory LevelModel({
    @JsonKey(name: 'level_id') required String levelId,
    required String description,
    @Default([]) List<PageModel> pages,
    @Default([]) List<QuestionModel> questions,
  }) = _LevelModel;

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}
