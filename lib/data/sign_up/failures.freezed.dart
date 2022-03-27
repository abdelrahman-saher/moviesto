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

  ServerFailure<T> serverFailure<T>(String? message) {
    return ServerFailure<T>(
      message,
    );
  }

  ConnectionFailure<T> connectionFailure<T>(String? message) {
    return ConnectionFailure<T>(
      message,
    );
  }

  UserExists<T> userExists<T>(String? message) {
    return UserExists<T>(
      message,
    );
  }

  CancelledByUser<T> cancelledByUser<T>(String? message) {
    return CancelledByUser<T>(
      message,
    );
  }

  LocalFailure<T> localFailure<T>(String? message) {
    return LocalFailure<T>(
      message,
    );
  }

  InvalidAccount<T> invalidAccount<T>(String? message) {
    return InvalidAccount<T>(
      message,
    );
  }

  InvalidCredential<T> invalidCredential<T>(String? message) {
    return InvalidCredential<T>(
      message,
    );
  }

  NotAllowed<T> notAllowed<T>(String? message) {
    return NotAllowed<T>(
      message,
    );
  }
}

/// @nodoc
const $SignupFailures = _$SignupFailuresTearOff();

/// @nodoc
mixin _$SignupFailures<T> {
  String? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupFailuresCopyWith<T, SignupFailures<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFailuresCopyWith<T, $Res> {
  factory $SignupFailuresCopyWith(
          SignupFailures<T> value, $Res Function(SignupFailures<T>) then) =
      _$SignupFailuresCopyWithImpl<T, $Res>;
  $Res call({String? message});
}

/// @nodoc
class _$SignupFailuresCopyWithImpl<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  _$SignupFailuresCopyWithImpl(this._value, this._then);

  final SignupFailures<T> _value;
  // ignore: unused_field
  final $Res Function(SignupFailures<T>) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $ServerFailureCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $ServerFailureCopyWith(
          ServerFailure<T> value, $Res Function(ServerFailure<T>) then) =
      _$ServerFailureCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
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

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerFailure<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailure<T> implements ServerFailure<T> {
  const _$ServerFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerFailure<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith =>
      _$ServerFailureCopyWithImpl<T, ServerFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements SignupFailures<T> {
  const factory ServerFailure(String? message) = _$ServerFailure<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $ConnectionFailureCopyWith(ConnectionFailure<T> value,
          $Res Function(ConnectionFailure<T>) then) =
      _$ConnectionFailureCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
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

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ConnectionFailure<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionFailure<T> implements ConnectionFailure<T> {
  const _$ConnectionFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.connectionFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionFailure<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ConnectionFailureCopyWith<T, ConnectionFailure<T>> get copyWith =>
      _$ConnectionFailureCopyWithImpl<T, ConnectionFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return connectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return connectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure<T> implements SignupFailures<T> {
  const factory ConnectionFailure(String? message) = _$ConnectionFailure<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $ConnectionFailureCopyWith<T, ConnectionFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExistsCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $UserExistsCopyWith(
          UserExists<T> value, $Res Function(UserExists<T>) then) =
      _$UserExistsCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
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

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UserExists<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserExists<T> implements UserExists<T> {
  const _$UserExists(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.userExists(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserExists<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UserExistsCopyWith<T, UserExists<T>> get copyWith =>
      _$UserExistsCopyWithImpl<T, UserExists<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return userExists(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return userExists?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(this);
    }
    return orElse();
  }
}

abstract class UserExists<T> implements SignupFailures<T> {
  const factory UserExists(String? message) = _$UserExists<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $UserExistsCopyWith<T, UserExists<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser<T> value, $Res Function(CancelledByUser<T>) then) =
      _$CancelledByUserCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
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

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(CancelledByUser<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CancelledByUser<T> implements CancelledByUser<T> {
  const _$CancelledByUser(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.cancelledByUser(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelledByUser<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $CancelledByUserCopyWith<T, CancelledByUser<T>> get copyWith =>
      _$CancelledByUserCopyWithImpl<T, CancelledByUser<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return cancelledByUser(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return cancelledByUser?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements SignupFailures<T> {
  const factory CancelledByUser(String? message) = _$CancelledByUser<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $CancelledByUserCopyWith<T, CancelledByUser<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalFailureCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $LocalFailureCopyWith(
          LocalFailure<T> value, $Res Function(LocalFailure<T>) then) =
      _$LocalFailureCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
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

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LocalFailure<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalFailure<T> implements LocalFailure<T> {
  const _$LocalFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.localFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalFailure<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LocalFailureCopyWith<T, LocalFailure<T>> get copyWith =>
      _$LocalFailureCopyWithImpl<T, LocalFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return localFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return localFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
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
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(this);
    }
    return orElse();
  }
}

abstract class LocalFailure<T> implements SignupFailures<T> {
  const factory LocalFailure(String? message) = _$LocalFailure<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $LocalFailureCopyWith<T, LocalFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidAccountCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $InvalidAccountCopyWith(
          InvalidAccount<T> value, $Res Function(InvalidAccount<T>) then) =
      _$InvalidAccountCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$InvalidAccountCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $InvalidAccountCopyWith<T, $Res> {
  _$InvalidAccountCopyWithImpl(
      InvalidAccount<T> _value, $Res Function(InvalidAccount<T>) _then)
      : super(_value, (v) => _then(v as InvalidAccount<T>));

  @override
  InvalidAccount<T> get _value => super._value as InvalidAccount<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidAccount<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidAccount<T> implements InvalidAccount<T> {
  const _$InvalidAccount(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.invalidAccount(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidAccount<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $InvalidAccountCopyWith<T, InvalidAccount<T>> get copyWith =>
      _$InvalidAccountCopyWithImpl<T, InvalidAccount<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return invalidAccount(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return invalidAccount?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (invalidAccount != null) {
      return invalidAccount(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
  }) {
    return invalidAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
  }) {
    return invalidAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (invalidAccount != null) {
      return invalidAccount(this);
    }
    return orElse();
  }
}

abstract class InvalidAccount<T> implements SignupFailures<T> {
  const factory InvalidAccount(String? message) = _$InvalidAccount<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $InvalidAccountCopyWith<T, InvalidAccount<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidCredentialCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $InvalidCredentialCopyWith(InvalidCredential<T> value,
          $Res Function(InvalidCredential<T>) then) =
      _$InvalidCredentialCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$InvalidCredentialCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $InvalidCredentialCopyWith<T, $Res> {
  _$InvalidCredentialCopyWithImpl(
      InvalidCredential<T> _value, $Res Function(InvalidCredential<T>) _then)
      : super(_value, (v) => _then(v as InvalidCredential<T>));

  @override
  InvalidCredential<T> get _value => super._value as InvalidCredential<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidCredential<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidCredential<T> implements InvalidCredential<T> {
  const _$InvalidCredential(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.invalidCredential(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidCredential<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $InvalidCredentialCopyWith<T, InvalidCredential<T>> get copyWith =>
      _$InvalidCredentialCopyWithImpl<T, InvalidCredential<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return invalidCredential(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return invalidCredential?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
  }) {
    return invalidCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
  }) {
    return invalidCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(this);
    }
    return orElse();
  }
}

abstract class InvalidCredential<T> implements SignupFailures<T> {
  const factory InvalidCredential(String? message) = _$InvalidCredential<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $InvalidCredentialCopyWith<T, InvalidCredential<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotAllowedCopyWith<T, $Res>
    implements $SignupFailuresCopyWith<T, $Res> {
  factory $NotAllowedCopyWith(
          NotAllowed<T> value, $Res Function(NotAllowed<T>) then) =
      _$NotAllowedCopyWithImpl<T, $Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$NotAllowedCopyWithImpl<T, $Res>
    extends _$SignupFailuresCopyWithImpl<T, $Res>
    implements $NotAllowedCopyWith<T, $Res> {
  _$NotAllowedCopyWithImpl(
      NotAllowed<T> _value, $Res Function(NotAllowed<T>) _then)
      : super(_value, (v) => _then(v as NotAllowed<T>));

  @override
  NotAllowed<T> get _value => super._value as NotAllowed<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotAllowed<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotAllowed<T> implements NotAllowed<T> {
  const _$NotAllowed(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFailures<$T>.notAllowed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotAllowed<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NotAllowedCopyWith<T, NotAllowed<T>> get copyWith =>
      _$NotAllowedCopyWithImpl<T, NotAllowed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) connectionFailure,
    required TResult Function(String? message) userExists,
    required TResult Function(String? message) cancelledByUser,
    required TResult Function(String? message) localFailure,
    required TResult Function(String? message) invalidAccount,
    required TResult Function(String? message) invalidCredential,
    required TResult Function(String? message) notAllowed,
  }) {
    return notAllowed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
  }) {
    return notAllowed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? connectionFailure,
    TResult Function(String? message)? userExists,
    TResult Function(String? message)? cancelledByUser,
    TResult Function(String? message)? localFailure,
    TResult Function(String? message)? invalidAccount,
    TResult Function(String? message)? invalidCredential,
    TResult Function(String? message)? notAllowed,
    required TResult orElse(),
  }) {
    if (notAllowed != null) {
      return notAllowed(message);
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
    required TResult Function(InvalidAccount<T> value) invalidAccount,
    required TResult Function(InvalidCredential<T> value) invalidCredential,
    required TResult Function(NotAllowed<T> value) notAllowed,
  }) {
    return notAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
  }) {
    return notAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(UserExists<T> value)? userExists,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(LocalFailure<T> value)? localFailure,
    TResult Function(InvalidAccount<T> value)? invalidAccount,
    TResult Function(InvalidCredential<T> value)? invalidCredential,
    TResult Function(NotAllowed<T> value)? notAllowed,
    required TResult orElse(),
  }) {
    if (notAllowed != null) {
      return notAllowed(this);
    }
    return orElse();
  }
}

abstract class NotAllowed<T> implements SignupFailures<T> {
  const factory NotAllowed(String? message) = _$NotAllowed<T>;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $NotAllowedCopyWith<T, NotAllowed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
