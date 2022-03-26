import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class SignupFailures<T> with _$SignupFailures<T> {
  const factory SignupFailures.serverFailure(String? message) = ServerFailure<T>;
  const factory SignupFailures.connectionFailure(String? message) = ConnectionFailure<T>;
  const factory SignupFailures.userExists(String? message) = UserExists<T>;
  const factory SignupFailures.cancelledByUser(String? message) = CancelledByUser<T>;
  const factory SignupFailures.localFailure(String? message) = LocalFailure<T>;
}
