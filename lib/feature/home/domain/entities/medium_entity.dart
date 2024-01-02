import 'package:freezed_annotation/freezed_annotation.dart';

part 'medium_entity.freezed.dart';

@freezed
class MediumEntity with _$MediumEntity {
  factory MediumEntity(
      {String? title,
      String? link,
      String? author,
      int? published,
      int? created,
      String? content,
      List<String>? category}) = _MediumEntity;
}
