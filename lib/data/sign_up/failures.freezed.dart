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

  ServerFailure<T> serverFailure<T>() {
    return ServerFailure<T>();
  }

  ConnectionFailure<T> connectionFailure<T>() {
    return ConnectionFailure<T>();
  }

  UserExists<T> userExists<T>() {
    return UserExists<T>();
  }

  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }

  LocalFailure<T> localFailure<T>() {
    return LocalFailure<T>();
  }
}

/// @nodoc
const $SignupFailures = _$SignupFailuresTearOff();

/// @nodoc
mixin _$SignupFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
    required TResult Function() localFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(LocalFailure<T> value) localFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
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
abstract class $ServerFailureCopyWith<T, $Res> {
  factory $ServerFailureCopyWith(
          ServerFailure<T> value, $Res Function(ServerFailure<T>) then) =
      _$ServerFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure<T> _value, $Res Function(ServerFailure<T>) _then)
      : super(_value, (v) => _then(v as ServerFailure<T>));

  @override
  ServerFailure<T> get _value => super._value as ServerFailure<T>;
}

/// @nodoc

class _$ServerFailure<T> implements ServerFailure<T> {
  const _$ServerFailure();

  @override
  String toString() {
    return 'SignupFailures<$T>.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
    required TResult Function() localFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(LocalFailure<T> value) localFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements SignupFailures<T> {
  const factory ServerFailure() = _$ServerFailure<T>;
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
    required TResult Function() serverFailure,
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
    required TResult Function() localFailure,
  }) {
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
  }) {
    return connectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
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
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(LocalFailure<T> value) localFailure,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
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
    required TResult Function() serverFailure,
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
    required TResult Function() localFailure,
  }) {
    return userExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
  }) {
    return userExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
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
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(LocalFailure<T> value) localFailure,
  }) {
    return userExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
  }) {
    return userExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
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
    required TResult Function() serverFailure,
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
    required TResult Function() localFailure,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
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
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(LocalFailure<T> value) localFailure,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
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

/// @nodoc
abstract class $LocalFailureCopyWith<T, $Res> {
  factory $LocalFailureCopyWith(
          LocalFailure<T> value, $Res Function(LocalFailure<T>) then) =
      _$LocalFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LocalFailureCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $LocalFailureCopyWith<T, $Res> {
  _$LocalFailureCopyWithImpl(
      LocalFailure<T> _value, $Res Function(LocalFailure<T>) _then)
      : super(_value, (v) => _then(v as LocalFailure<T>));

  @override
  LocalFailure<T> get _value => super._value as LocalFailure<T>;
}

/// @nodoc

class _$LocalFailure<T> implements LocalFailure<T> {
  const _$LocalFailure();

  @override
  String toString() {
    return 'SignupFailures<$T>.localFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() connectionFailure,
    required TResult Function() userExists,
    required TResult Function() cancelledByUser,
    required TResult Function() localFailure,
  }) {
    return localFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
  }) {
    return localFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? connectionFailure,
    TResult Function()? userExists,
    TResult Function()? cancelledByUser,
    TResult Function()? localFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(UserExists<T> value) userExists,
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(LocalFailure<T> value) localFailure,
  }) {
    return localFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
  }) {
    return localFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(this);
    }
    return orElse();
  }
}

abstract class LocalFailure<T> implements SignupFailures<T> {
  const factory LocalFailure() = _$LocalFailure<T>;
}
