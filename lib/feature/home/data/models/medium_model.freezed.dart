// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medium_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediumModel _$MediumModelFromJson(Map<String, dynamic> json) {
  return _MediumModel.fromJson(json);
}

/// @nodoc
mixin _$MediumModel {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'published')
  int get published => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  int get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  List<String> get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediumModelCopyWith<MediumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumModelCopyWith<$Res> {
  factory $MediumModelCopyWith(
          MediumModel value, $Res Function(MediumModel) then) =
      _$MediumModelCopyWithImpl<$Res, MediumModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'published') int published,
      @JsonKey(name: 'created') int created,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'category') List<String> category});
}

/// @nodoc
class _$MediumModelCopyWithImpl<$Res, $Val extends MediumModel>
    implements $MediumModelCopyWith<$Res> {
  _$MediumModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? author = null,
    Object? published = null,
    Object? created = null,
    Object? content = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediumModelCopyWith<$Res>
    implements $MediumModelCopyWith<$Res> {
  factory _$$_MediumModelCopyWith(
          _$_MediumModel value, $Res Function(_$_MediumModel) then) =
      __$$_MediumModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'published') int published,
      @JsonKey(name: 'created') int created,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'category') List<String> category});
}

/// @nodoc
class __$$_MediumModelCopyWithImpl<$Res>
    extends _$MediumModelCopyWithImpl<$Res, _$_MediumModel>
    implements _$$_MediumModelCopyWith<$Res> {
  __$$_MediumModelCopyWithImpl(
      _$_MediumModel _value, $Res Function(_$_MediumModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? author = null,
    Object? published = null,
    Object? created = null,
    Object? content = null,
    Object? category = null,
  }) {
    return _then(_$_MediumModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediumModel implements _MediumModel {
  const _$_MediumModel(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'link') required this.link,
      @JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'published') required this.published,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'category') required final List<String> category})
      : _category = category;

  factory _$_MediumModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediumModelFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'link')
  final String link;
  @override
  @JsonKey(name: 'author')
  final String author;
  @override
  @JsonKey(name: 'published')
  final int published;
  @override
  @JsonKey(name: 'created')
  final int created;
  @override
  @JsonKey(name: 'content')
  final String content;
  final List<String> _category;
  @override
  @JsonKey(name: 'category')
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'MediumModel(title: $title, link: $link, author: $author, published: $published, created: $created, content: $content, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediumModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, author, published,
      created, content, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediumModelCopyWith<_$_MediumModel> get copyWith =>
      __$$_MediumModelCopyWithImpl<_$_MediumModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediumModelToJson(
      this,
    );
  }
}

abstract class _MediumModel implements MediumModel {
  const factory _MediumModel(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'link') required final String link,
          @JsonKey(name: 'author') required final String author,
          @JsonKey(name: 'published') required final int published,
          @JsonKey(name: 'created') required final int created,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'category') required final List<String> category}) =
      _$_MediumModel;

  factory _MediumModel.fromJson(Map<String, dynamic> json) =
      _$_MediumModel.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'link')
  String get link;
  @override
  @JsonKey(name: 'author')
  String get author;
  @override
  @JsonKey(name: 'published')
  int get published;
  @override
  @JsonKey(name: 'created')
  int get created;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'category')
  List<String> get category;
  @override
  @JsonKey(ignore: true)
  _$$_MediumModelCopyWith<_$_MediumModel> get copyWith =>
      throw _privateConstructorUsedError;
}
