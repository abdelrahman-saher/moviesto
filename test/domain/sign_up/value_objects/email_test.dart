import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';

void main() {
  const String validEmail = "test@test.com";
  const String notValidEmail = "test";
  group("EmailVO test -", () {
    group("isValid test -", () {
      test("if email is valid should return true", () {
        expect(EmailVO(validEmail).isValid, true);
      });
      test("if email is not valid should return false", () {
        expect(EmailVO(notValidEmail).isValid, false);
      });
    });
    group("getNotNullValue test -", () {
      test("if email is valid should return email", () {
        expect(EmailVO(validEmail).getNotNullValue(), validEmail);
      });
      test("if email is not valid should return empty string", () {
        expect(EmailVO(notValidEmail).getNotNullValue(), "");
      });
    });
    group("value test -", () {
      test("if email is valid should return email", () {
        EmailVO emailVO = EmailVO(validEmail);
        emailVO.value.fold((_) {}, (r) => expect(r, validEmail));
      });
      test("if email is not valid should return InvalidEmail failure", () {
        EmailVO emailVO = EmailVO(notValidEmail);
        emailVO.value.fold((l) => expect(l, isA<InvalidEmail>()), (_) => {});
      });
    });
    group("getFailureValue test -", () {
      test("if email is valid should return null", () {
        EmailVO emailVO = EmailVO(validEmail);
        expect(emailVO.getFailureValue(), null);
      });
      test(
          "if email is not valid should return InvalidEmail failure string value",
          () {
        EmailVO emailVO = EmailVO(notValidEmail);
        expect(emailVO.getFailureValue(), isA<String?>());
      });
    });
  });
}
