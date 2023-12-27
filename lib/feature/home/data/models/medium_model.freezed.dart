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
  @JsonKey(name: 'category')
  List<String> get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'category') List<String> category,
      @JsonKey(name: 'content') String content});
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
    Object? category = null,
    Object? content = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediumModelImplCopyWith<$Res>
    implements $MediumModelCopyWith<$Res> {
  factory _$$MediumModelImplCopyWith(
          _$MediumModelImpl value, $Res Function(_$MediumModelImpl) then) =
      __$$MediumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'published') int published,
      @JsonKey(name: 'created') int created,
      @JsonKey(name: 'category') List<String> category,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$MediumModelImplCopyWithImpl<$Res>
    extends _$MediumModelCopyWithImpl<$Res, _$MediumModelImpl>
    implements _$$MediumModelImplCopyWith<$Res> {
  __$$MediumModelImplCopyWithImpl(
      _$MediumModelImpl _value, $Res Function(_$MediumModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? author = null,
    Object? published = null,
    Object? created = null,
    Object? category = null,
    Object? content = null,
  }) {
    return _then(_$MediumModelImpl(
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
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediumModelImpl implements _MediumModel {
  const _$MediumModelImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'link') required this.link,
      @JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'published') required this.published,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'category') required final List<String> category,
      @JsonKey(name: 'content') required this.content})
      : _category = category;

  factory _$MediumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediumModelImplFromJson(json);

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
  final List<String> _category;
  @override
  @JsonKey(name: 'category')
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'MediumModel(title: $title, link: $link, author: $author, published: $published, created: $created, category: $category, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediumModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, author, published,
      created, const DeepCollectionEquality().hash(_category), content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediumModelImplCopyWith<_$MediumModelImpl> get copyWith =>
      __$$MediumModelImplCopyWithImpl<_$MediumModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediumModelImplToJson(
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
          @JsonKey(name: 'category') required final List<String> category,
          @JsonKey(name: 'content') required final String content}) =
      _$MediumModelImpl;

  factory _MediumModel.fromJson(Map<String, dynamic> json) =
      _$MediumModelImpl.fromJson;

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
  @JsonKey(name: 'category')
  List<String> get category;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$MediumModelImplCopyWith<_$MediumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
