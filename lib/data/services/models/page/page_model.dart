import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_model.g.dart';
part 'page_model.freezed.dart';

@freezed
abstract class PageModel with _$PageModel {
  factory PageModel({
    required String text,
    @JsonKey(name: 'page_number') required int pageNumber,
  }) = _PageModel;

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);
}
