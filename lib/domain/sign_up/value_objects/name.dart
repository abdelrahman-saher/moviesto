import 'package:moviesto/domain/core/validators/value_validators.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';
import 'package:moviesto/domain/core/value_object/value_object.dart';
import 'package:dartz/dartz.dart';

class NameVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NameVO(String input) {
    // if name is valid will return string value
    // else it will return InvalidName failure
    if (ValueValidator.validateName(input)) {
      return NameVO._(right(input));
    } else {
      return NameVO._(
          left(ValueFailure.invalidName(failedValue: _getErrorMessage())));
    }
  }

  const NameVO._(this.value);

  static String? _getErrorMessage() {
    // to return error message in multiple language
    // so this fn will be used to get error value from i10n file
    return "Oops! Your Name Is Not Correct";
  }
}
