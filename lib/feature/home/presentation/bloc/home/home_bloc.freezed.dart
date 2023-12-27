// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTheme,
    required TResult Function(int? index) changeSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTheme,
    TResult? Function(int? index)? changeSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTheme,
    TResult Function(int? index)? changeSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitThemeEvent value) initTheme,
    required TResult Function(SectionIndexEvent value) changeSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitThemeEvent value)? initTheme,
    TResult? Function(SectionIndexEvent value)? changeSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitThemeEvent value)? initTheme,
    TResult Function(SectionIndexEvent value)? changeSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitThemeEventImplCopyWith<$Res> {
  factory _$$InitThemeEventImplCopyWith(_$InitThemeEventImpl value,
          $Res Function(_$InitThemeEventImpl) then) =
      __$$InitThemeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitThemeEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitThemeEventImpl>
    implements _$$InitThemeEventImplCopyWith<$Res> {
  __$$InitThemeEventImplCopyWithImpl(
      _$InitThemeEventImpl _value, $Res Function(_$InitThemeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitThemeEventImpl
    with DiagnosticableTreeMixin
    implements InitThemeEvent {
  const _$InitThemeEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.initTheme()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.initTheme'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitThemeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTheme,
    required TResult Function(int? index) changeSection,
  }) {
    return initTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTheme,
    TResult? Function(int? index)? changeSection,
  }) {
    return initTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTheme,
    TResult Function(int? index)? changeSection,
    required TResult orElse(),
  }) {
    if (initTheme != null) {
      return initTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitThemeEvent value) initTheme,
    required TResult Function(SectionIndexEvent value) changeSection,
  }) {
    return initTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitThemeEvent value)? initTheme,
    TResult? Function(SectionIndexEvent value)? changeSection,
  }) {
    return initTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitThemeEvent value)? initTheme,
    TResult Function(SectionIndexEvent value)? changeSection,
    required TResult orElse(),
  }) {
    if (initTheme != null) {
      return initTheme(this);
    }
    return orElse();
  }
}

abstract class InitThemeEvent implements HomeEvent {
  const factory InitThemeEvent() = _$InitThemeEventImpl;
}

/// @nodoc
abstract class _$$SectionIndexEventImplCopyWith<$Res> {
  factory _$$SectionIndexEventImplCopyWith(_$SectionIndexEventImpl value,
          $Res Function(_$SectionIndexEventImpl) then) =
      __$$SectionIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$SectionIndexEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SectionIndexEventImpl>
    implements _$$SectionIndexEventImplCopyWith<$Res> {
  __$$SectionIndexEventImplCopyWithImpl(_$SectionIndexEventImpl _value,
      $Res Function(_$SectionIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SectionIndexEventImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SectionIndexEventImpl
    with DiagnosticableTreeMixin
    implements SectionIndexEvent {
  const _$SectionIndexEventImpl(this.index);

  @override
  final int? index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.changeSection(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.changeSection'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionIndexEventImplCopyWith<_$SectionIndexEventImpl> get copyWith =>
      __$$SectionIndexEventImplCopyWithImpl<_$SectionIndexEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTheme,
    required TResult Function(int? index) changeSection,
  }) {
    return changeSection(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTheme,
    TResult? Function(int? index)? changeSection,
  }) {
    return changeSection?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTheme,
    TResult Function(int? index)? changeSection,
    required TResult orElse(),
  }) {
    if (changeSection != null) {
      return changeSection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitThemeEvent value) initTheme,
    required TResult Function(SectionIndexEvent value) changeSection,
  }) {
    return changeSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitThemeEvent value)? initTheme,
    TResult? Function(SectionIndexEvent value)? changeSection,
  }) {
    return changeSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitThemeEvent value)? initTheme,
    TResult Function(SectionIndexEvent value)? changeSection,
    required TResult orElse(),
  }) {
    if (changeSection != null) {
      return changeSection(this);
    }
    return orElse();
  }
}

abstract class SectionIndexEvent implements HomeEvent {
  const factory SectionIndexEvent(final int? index) = _$SectionIndexEventImpl;

  int? get index;
  @JsonKey(ignore: true)
  _$$SectionIndexEventImplCopyWith<_$SectionIndexEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  ThemeData? get theme => throw _privateConstructorUsedError;
  int? get sectionsSelectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({ThemeData? theme, int? sectionsSelectedIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? sectionsSelectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      sectionsSelectedIndex: freezed == sectionsSelectedIndex
          ? _value.sectionsSelectedIndex
          : sectionsSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData? theme, int? sectionsSelectedIndex});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? sectionsSelectedIndex = freezed,
  }) {
    return _then(_$HomeStateImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      sectionsSelectedIndex: freezed == sectionsSelectedIndex
          ? _value.sectionsSelectedIndex
          : sectionsSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl({this.theme, this.sectionsSelectedIndex});

  @override
  final ThemeData? theme;
  @override
  final int? sectionsSelectedIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(theme: $theme, sectionsSelectedIndex: $sectionsSelectedIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(
          DiagnosticsProperty('sectionsSelectedIndex', sectionsSelectedIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.sectionsSelectedIndex, sectionsSelectedIndex) ||
                other.sectionsSelectedIndex == sectionsSelectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, sectionsSelectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final ThemeData? theme,
      final int? sectionsSelectedIndex}) = _$HomeStateImpl;

  @override
  ThemeData? get theme;
  @override
  int? get sectionsSelectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
