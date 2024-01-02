import 'package:web_portofolio/feature/home/data/models/medium_model.dart';
import 'package:web_portofolio/feature/home/domain/entities/medium_entity.dart';

extension MediumModelExtension on MediumModel {
  MediumEntity toEntity() => MediumEntity(
      title: title,
      link: link,
      author: author,
      published: published,
      created: created,
      category: category,
      content: content);
}
