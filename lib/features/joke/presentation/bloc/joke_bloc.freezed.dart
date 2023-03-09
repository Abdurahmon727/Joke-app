// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getJoke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getJoke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getJoke,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetJoke value) getJoke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetJoke value)? getJoke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetJoke value)? getJoke,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeEventCopyWith<$Res> {
  factory $JokeEventCopyWith(JokeEvent value, $Res Function(JokeEvent) then) =
      _$JokeEventCopyWithImpl<$Res, JokeEvent>;
}

/// @nodoc
class _$JokeEventCopyWithImpl<$Res, $Val extends JokeEvent>
    implements $JokeEventCopyWith<$Res> {
  _$JokeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetJokeCopyWith<$Res> {
  factory _$$_GetJokeCopyWith(
          _$_GetJoke value, $Res Function(_$_GetJoke) then) =
      __$$_GetJokeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetJokeCopyWithImpl<$Res>
    extends _$JokeEventCopyWithImpl<$Res, _$_GetJoke>
    implements _$$_GetJokeCopyWith<$Res> {
  __$$_GetJokeCopyWithImpl(_$_GetJoke _value, $Res Function(_$_GetJoke) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetJoke implements _GetJoke {
  const _$_GetJoke();

  @override
  String toString() {
    return 'JokeEvent.getJoke()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetJoke);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getJoke,
  }) {
    return getJoke();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getJoke,
  }) {
    return getJoke?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getJoke,
    required TResult orElse(),
  }) {
    if (getJoke != null) {
      return getJoke();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetJoke value) getJoke,
  }) {
    return getJoke(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetJoke value)? getJoke,
  }) {
    return getJoke?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetJoke value)? getJoke,
    required TResult orElse(),
  }) {
    if (getJoke != null) {
      return getJoke(this);
    }
    return orElse();
  }
}

abstract class _GetJoke implements JokeEvent {
  const factory _GetJoke() = _$_GetJoke;
}

/// @nodoc
mixin _$JokeState {
  FormzStatus get status => throw _privateConstructorUsedError;
  JokeEntity get entity => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeStateCopyWith<JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeStateCopyWith<$Res> {
  factory $JokeStateCopyWith(JokeState value, $Res Function(JokeState) then) =
      _$JokeStateCopyWithImpl<$Res, JokeState>;
  @useResult
  $Res call({FormzStatus status, JokeEntity entity, String errorMessage});
}

/// @nodoc
class _$JokeStateCopyWithImpl<$Res, $Val extends JokeState>
    implements $JokeStateCopyWith<$Res> {
  _$JokeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entity = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as JokeEntity,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeStateCopyWith<$Res> implements $JokeStateCopyWith<$Res> {
  factory _$$_JokeStateCopyWith(
          _$_JokeState value, $Res Function(_$_JokeState) then) =
      __$$_JokeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, JokeEntity entity, String errorMessage});
}

/// @nodoc
class __$$_JokeStateCopyWithImpl<$Res>
    extends _$JokeStateCopyWithImpl<$Res, _$_JokeState>
    implements _$$_JokeStateCopyWith<$Res> {
  __$$_JokeStateCopyWithImpl(
      _$_JokeState _value, $Res Function(_$_JokeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entity = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_JokeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as JokeEntity,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JokeState implements _JokeState {
  const _$_JokeState(
      {this.status = FormzStatus.pure,
      required this.entity,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final JokeEntity entity;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'JokeState(status: $status, entity: $entity, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, entity, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeStateCopyWith<_$_JokeState> get copyWith =>
      __$$_JokeStateCopyWithImpl<_$_JokeState>(this, _$identity);
}

abstract class _JokeState implements JokeState {
  const factory _JokeState(
      {final FormzStatus status,
      required final JokeEntity entity,
      final String errorMessage}) = _$_JokeState;

  @override
  FormzStatus get status;
  @override
  JokeEntity get entity;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_JokeStateCopyWith<_$_JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
