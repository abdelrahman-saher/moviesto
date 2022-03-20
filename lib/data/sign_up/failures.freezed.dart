// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupFailuresTearOff {
  const _$SignupFailuresTearOff();

  ConnectionFailure<T> connectionFailure<T>() {
    return ConnectionFailure<T>();
  }

  UserExists<T> userExists<T>() {
    return UserExists<T>();
  }

  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }
}

/// @nodoc
const $SignupFailures = _$SignupFailuresTearOff();

/// @nodoc
mixin _$SignupFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFailuresCopyWith<T, $Res> {
  factory $SignupFailuresCopyWith(
          SignupFailures<T> value, $Res Function(SignupFailures<T>) then) =
      _$SignupFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SignupFailuresCopyWithImpl<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  _$SignupFailuresCopyWithImpl(this._value, this._then);

  final SignupFailures<T> _value;
  // ignore: unused_field
  final $Res Function(SignupFailures<T>) _then;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<T, $Res> {
  factory $ConnectionFailureCopyWith(ConnectionFailure<T> value,
          $Res Function(ConnectionFailure<T>) then) =
      _$ConnectionFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $ConnectionFailureCopyWith<T, $Res> {
  _$ConnectionFailureCopyWithImpl(
      ConnectionFailure<T> _value, $Res Function(ConnectionFailure<T>) _then)
      : super(_value, (v) => _then(v as ConnectionFailure<T>));

  @override
  ConnectionFailure<T> get _value => super._value as ConnectionFailure<T>;
}

/// @nodoc

class _$ConnectionFailure<T> implements ConnectionFailure<T> {
  const _$ConnectionFailure();

  @override
  String toString() {
    return 'SignupFailures<$T>.connectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectionFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
  }) {
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
  }) {
    return connectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure<T> implements SignupFailures<T> {
  const factory ConnectionFailure() = _$ConnectionFailure<T>;
}

/// @nodoc
abstract class $UserExistsCopyWith<T, $Res> {
  factory $UserExistsCopyWith(
          UserExists<T> value, $Res Function(UserExists<T>) then) =
      _$UserExistsCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$UserExistsCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $UserExistsCopyWith<T, $Res> {
  _$UserExistsCopyWithImpl(
      UserExists<T> _value, $Res Function(UserExists<T>) _then)
      : super(_value, (v) => _then(v as UserExists<T>));

  @override
  UserExists<T> get _value => super._value as UserExists<T>;
}

/// @nodoc

class _$UserExists<T> implements UserExists<T> {
  const _$UserExists();

  @override
  String toString() {
    return 'SignupFailures<$T>.userExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserExists<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
  }) {
    return userExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
  }) {
    return userExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
  }) {
    return userExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
  }) {
    return userExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(this);
    }
    return orElse();
  }
}

abstract class UserExists<T> implements SignupFailures<T> {
  const factory UserExists() = _$UserExists<T>;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<T, $Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser<T> value, $Res Function(CancelledByUser<T>) then) =
      _$CancelledByUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $CancelledByUserCopyWith<T, $Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser<T> _value, $Res Function(CancelledByUser<T>) _then)
      : super(_value, (v) => _then(v as CancelledByUser<T>));

  @override
  CancelledByUser<T> get _value => super._value as CancelledByUser<T>;
}

/// @nodoc

class _$CancelledByUser<T> implements CancelledByUser<T> {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'SignupFailures<$T>.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelledByUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements SignupFailures<T> {
  const factory CancelledByUser() = _$CancelledByUser<T>;
}
