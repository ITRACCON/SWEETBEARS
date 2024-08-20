// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clicker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int balance) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int balance)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int balance)? initial,
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
abstract class $ClickerStateCopyWith<$Res> {
  factory $ClickerStateCopyWith(
          ClickerState value, $Res Function(ClickerState) then) =
      _$ClickerStateCopyWithImpl<$Res, ClickerState>;
}

/// @nodoc
class _$ClickerStateCopyWithImpl<$Res, $Val extends ClickerState>
    implements $ClickerStateCopyWith<$Res> {
  _$ClickerStateCopyWithImpl(this._value, this._then);

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
  $Res call({int balance});
}

/// @nodoc
class __$$IntialImplCopyWithImpl<$Res>
    extends _$ClickerStateCopyWithImpl<$Res, _$IntialImpl>
    implements _$$IntialImplCopyWith<$Res> {
  __$$IntialImplCopyWithImpl(
      _$IntialImpl _value, $Res Function(_$IntialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$IntialImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IntialImpl implements Intial {
  const _$IntialImpl(this.balance);

  @override
  final int balance;

  @override
  String toString() {
    return 'ClickerState.initial(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntialImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntialImplCopyWith<_$IntialImpl> get copyWith =>
      __$$IntialImplCopyWithImpl<_$IntialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int balance) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int balance)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int balance)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(balance);
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

abstract class Intial implements ClickerState {
  const factory Intial(final int balance) = _$IntialImpl;

  int get balance;
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
    extends _$ClickerStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ClickerState.loading()';
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
    required TResult Function(int balance) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int balance)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int balance)? initial,
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

abstract class Loading implements ClickerState {
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
    extends _$ClickerStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ClickerState.error()';
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
    required TResult Function(int balance) initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int balance)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int balance)? initial,
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

abstract class Error implements ClickerState {
  const factory Error() = _$ErrorImpl;
}
