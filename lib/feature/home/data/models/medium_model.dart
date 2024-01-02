// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'medium_model.freezed.dart';
part 'medium_model.g.dart';

@freezed
class MediumModel with _$MediumModel {
  const factory MediumModel({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'link') required String link,
    @JsonKey(name: 'author') required String author,
    @JsonKey(name: 'published') required int published,
    @JsonKey(name: 'created') required int created,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'category') required List<String> category,
  }) = _MediumModel;

  factory MediumModel.fromJson(Map<String, dynamic> json) =>
      _$MediumModelFromJson(json);
}
