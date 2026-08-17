import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_model.g.dart';
part 'option_model.freezed.dart';

@freezed
abstract class OptionModel with _$OptionModel {
  factory OptionModel({required String id, required String text}) =
      _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) =>
      _$OptionModelFromJson(json);
}
