import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class SignupFailures<T> with _$SignupFailures<T> {
  const factory SignupFailures.serverFailure() = ServerFailure<T>;
  const factory SignupFailures.connectionFailure() = ConnectionFailure<T>;
  const factory SignupFailures.userExists() = UserExists<T>;
  const factory SignupFailures.cancelledByUser() = CancelledByUser<T>;
  const factory SignupFailures.localFailure() = LocalFailure<T>;
}
