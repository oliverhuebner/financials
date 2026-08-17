import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:financials/data/services/models/option/option_model.dart';

part 'question_model.g.dart';
part 'question_model.freezed.dart';

@freezed
abstract class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    @JsonKey(name: "question_number") required int questionNumber,
    required String id,
    required String text,
    required List<OptionModel> options,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
