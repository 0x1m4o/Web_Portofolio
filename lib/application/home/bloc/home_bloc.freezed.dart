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
    required TResult Function() initBiner,
    required TResult Function() changeBiner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initBiner,
    TResult? Function()? changeBiner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBiner,
    TResult Function()? changeBiner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBinerEvent value) initBiner,
    required TResult Function(ChangeBinerEvent value) changeBiner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBinerEvent value)? initBiner,
    TResult? Function(ChangeBinerEvent value)? changeBiner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBinerEvent value)? initBiner,
    TResult Function(ChangeBinerEvent value)? changeBiner,
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
abstract class _$$InitBinerEventCopyWith<$Res> {
  factory _$$InitBinerEventCopyWith(
          _$InitBinerEvent value, $Res Function(_$InitBinerEvent) then) =
      __$$InitBinerEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitBinerEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitBinerEvent>
    implements _$$InitBinerEventCopyWith<$Res> {
  __$$InitBinerEventCopyWithImpl(
      _$InitBinerEvent _value, $Res Function(_$InitBinerEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitBinerEvent implements InitBinerEvent {
  const _$InitBinerEvent();

  @override
  String toString() {
    return 'HomeEvent.initBiner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitBinerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBiner,
    required TResult Function() changeBiner,
  }) {
    return initBiner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initBiner,
    TResult? Function()? changeBiner,
  }) {
    return initBiner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBiner,
    TResult Function()? changeBiner,
    required TResult orElse(),
  }) {
    if (initBiner != null) {
      return initBiner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBinerEvent value) initBiner,
    required TResult Function(ChangeBinerEvent value) changeBiner,
  }) {
    return initBiner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBinerEvent value)? initBiner,
    TResult? Function(ChangeBinerEvent value)? changeBiner,
  }) {
    return initBiner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBinerEvent value)? initBiner,
    TResult Function(ChangeBinerEvent value)? changeBiner,
    required TResult orElse(),
  }) {
    if (initBiner != null) {
      return initBiner(this);
    }
    return orElse();
  }
}

abstract class InitBinerEvent implements HomeEvent {
  const factory InitBinerEvent() = _$InitBinerEvent;
}

/// @nodoc
abstract class _$$ChangeBinerEventCopyWith<$Res> {
  factory _$$ChangeBinerEventCopyWith(
          _$ChangeBinerEvent value, $Res Function(_$ChangeBinerEvent) then) =
      __$$ChangeBinerEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeBinerEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeBinerEvent>
    implements _$$ChangeBinerEventCopyWith<$Res> {
  __$$ChangeBinerEventCopyWithImpl(
      _$ChangeBinerEvent _value, $Res Function(_$ChangeBinerEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeBinerEvent implements ChangeBinerEvent {
  const _$ChangeBinerEvent();

  @override
  String toString() {
    return 'HomeEvent.changeBiner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeBinerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBiner,
    required TResult Function() changeBiner,
  }) {
    return changeBiner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initBiner,
    TResult? Function()? changeBiner,
  }) {
    return changeBiner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBiner,
    TResult Function()? changeBiner,
    required TResult orElse(),
  }) {
    if (changeBiner != null) {
      return changeBiner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBinerEvent value) initBiner,
    required TResult Function(ChangeBinerEvent value) changeBiner,
  }) {
    return changeBiner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBinerEvent value)? initBiner,
    TResult? Function(ChangeBinerEvent value)? changeBiner,
  }) {
    return changeBiner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBinerEvent value)? initBiner,
    TResult Function(ChangeBinerEvent value)? changeBiner,
    required TResult orElse(),
  }) {
    if (changeBiner != null) {
      return changeBiner(this);
    }
    return orElse();
  }
}

abstract class ChangeBinerEvent implements HomeEvent {
  const factory ChangeBinerEvent() = _$ChangeBinerEvent;
}

/// @nodoc
mixin _$HomeState {
  String get hex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({String hex});
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
    Object? hex = null,
  }) {
    return _then(_value.copyWith(
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hex});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hex = null,
  }) {
    return _then(_$_HomeState(
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({required this.hex});

  @override
  final String hex;

  @override
  String toString() {
    return 'HomeState(hex: $hex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.hex, hex) || other.hex == hex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({required final String hex}) = _$_HomeState;

  @override
  String get hex;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
