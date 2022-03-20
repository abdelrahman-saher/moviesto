import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({@required String? failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({@required String? failedValue}) =
      InvalidPassword<T>;
  const factory ValueFailure.invalidName({@required String? failedValue}) =
      InvalidName<T>;

  const factory ValueFailure.invalidPhone({@required String? failedValue}) =
      InvalidPhone<T>;
}
