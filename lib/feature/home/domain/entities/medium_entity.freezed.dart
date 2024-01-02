// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medium_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediumEntity {
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  int? get published => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediumEntityCopyWith<MediumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumEntityCopyWith<$Res> {
  factory $MediumEntityCopyWith(
          MediumEntity value, $Res Function(MediumEntity) then) =
      _$MediumEntityCopyWithImpl<$Res, MediumEntity>;
  @useResult
  $Res call(
      {String? title,
      String? link,
      String? author,
      int? published,
      int? created,
      String? content,
      List<String>? category});
}

/// @nodoc
class _$MediumEntityCopyWithImpl<$Res, $Val extends MediumEntity>
    implements $MediumEntityCopyWith<$Res> {
  _$MediumEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? author = freezed,
    Object? published = freezed,
    Object? created = freezed,
    Object? content = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediumEntityCopyWith<$Res>
    implements $MediumEntityCopyWith<$Res> {
  factory _$$_MediumEntityCopyWith(
          _$_MediumEntity value, $Res Function(_$_MediumEntity) then) =
      __$$_MediumEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? link,
      String? author,
      int? published,
      int? created,
      String? content,
      List<String>? category});
}

/// @nodoc
class __$$_MediumEntityCopyWithImpl<$Res>
    extends _$MediumEntityCopyWithImpl<$Res, _$_MediumEntity>
    implements _$$_MediumEntityCopyWith<$Res> {
  __$$_MediumEntityCopyWithImpl(
      _$_MediumEntity _value, $Res Function(_$_MediumEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? author = freezed,
    Object? published = freezed,
    Object? created = freezed,
    Object? content = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_MediumEntity(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_MediumEntity implements _MediumEntity {
  _$_MediumEntity(
      {this.title,
      this.link,
      this.author,
      this.published,
      this.created,
      this.content,
      final List<String>? category})
      : _category = category;

  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? author;
  @override
  final int? published;
  @override
  final int? created;
  @override
  final String? content;
  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediumEntity(title: $title, link: $link, author: $author, published: $published, created: $created, content: $content, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediumEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, link, author, published,
      created, content, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediumEntityCopyWith<_$_MediumEntity> get copyWith =>
      __$$_MediumEntityCopyWithImpl<_$_MediumEntity>(this, _$identity);
}

abstract class _MediumEntity implements MediumEntity {
  factory _MediumEntity(
      {final String? title,
      final String? link,
      final String? author,
      final int? published,
      final int? created,
      final String? content,
      final List<String>? category}) = _$_MediumEntity;

  @override
  String? get title;
  @override
  String? get link;
  @override
  String? get author;
  @override
  int? get published;
  @override
  int? get created;
  @override
  String? get content;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$_MediumEntityCopyWith<_$_MediumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
