import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';


abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  String getNotNullValue() {
    return value.fold((l) => "", (r) => r.toString());
  }
  String? getFailureValue() {
    return value.fold((l) => l.failedValue , (r) => null);
  }
  bool get isValid => value.isRight();
  @override
  List<Object?> get props => [value];
}
