// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediumModelImpl _$$MediumModelImplFromJson(Map<String, dynamic> json) =>
    _$MediumModelImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      author: json['author'] as String,
      published: json['published'] as int,
      created: json['created'] as int,
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$MediumModelImplToJson(_$MediumModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'author': instance.author,
      'published': instance.published,
      'created': instance.created,
      'category': instance.category,
      'content': instance.content,
    };
