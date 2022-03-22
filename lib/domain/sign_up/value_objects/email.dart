import 'package:dartz/dartz.dart';
import 'package:moviesto/domain/core/validators/value_validators.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';
import 'package:moviesto/domain/core/value_object/value_object.dart';

class EmailVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailVO(String input) {
    // if name is valid will return string value
    // else it will return InvalidEmail failure
    if (ValueValidator.validateEmailAddress(input)) {
      return EmailVO._(right(input));
    } else {
      return EmailVO._(
          left(ValueFailure.invalidEmail(failedValue: _getErrorMessage())));
    }
  }

  const EmailVO._(this.value);

  static String? _getErrorMessage() {
    // to return error message in multiple language
    // so this fn will be used to get error value from i10n file
    return "Oops! Your Email Is Not Correct";
  }
}
