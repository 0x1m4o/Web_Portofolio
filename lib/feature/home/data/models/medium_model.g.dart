// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediumModel _$$_MediumModelFromJson(Map<String, dynamic> json) =>
    _$_MediumModel(
      title: json['title'] as String,
      link: json['link'] as String,
      author: json['author'] as String,
      published: json['published'] as int,
      created: json['created'] as int,
      content: json['content'] as String,
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MediumModelToJson(_$_MediumModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'author': instance.author,
      'published': instance.published,
      'created': instance.created,
      'content': instance.content,
      'category': instance.category,
    };
