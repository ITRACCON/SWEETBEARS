// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> userInfo) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Intial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IntialImplCopyWith<$Res> {
  factory _$$IntialImplCopyWith(
          _$IntialImpl value, $Res Function(_$IntialImpl) then) =
      __$$IntialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> userInfo});
}

/// @nodoc
class __$$IntialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$IntialImpl>
    implements _$$IntialImplCopyWith<$Res> {
  __$$IntialImplCopyWithImpl(
      _$IntialImpl _value, $Res Function(_$IntialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$IntialImpl(
      null == userInfo
          ? _value._userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$IntialImpl implements Intial {
  const _$IntialImpl(final Map<dynamic, dynamic> userInfo)
      : _userInfo = userInfo;

  final Map<dynamic, dynamic> _userInfo;
  @override
  Map<dynamic, dynamic> get userInfo {
    if (_userInfo is EqualUnmodifiableMapView) return _userInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userInfo);
  }

  @override
  String toString() {
    return 'UserState.initial(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntialImpl &&
            const DeepCollectionEquality().equals(other._userInfo, _userInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntialImplCopyWith<_$IntialImpl> get copyWith =>
      __$$IntialImplCopyWithImpl<_$IntialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> userInfo) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Intial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Intial implements UserState {
  const factory Intial(final Map<dynamic, dynamic> userInfo) = _$IntialImpl;

  Map<dynamic, dynamic> get userInfo;
  @JsonKey(ignore: true)
  _$$IntialImplCopyWith<_$IntialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> userInfo) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Intial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'UserState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> userInfo) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> userInfo)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Intial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserState {
  const factory Error() = _$ErrorImpl;
}
