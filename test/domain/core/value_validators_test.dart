import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/domain/core/validators/value_validators.dart';

void main() {
  group("Value Validators test -", () {
    group("Name test -", () {
      test("if name less than one letter should return false", () {
        expect(ValueValidator.validateName(""), false);
      });
      test("if name is valid should return true", () {
        expect(ValueValidator.validateName("test"), true);
      });
      test("if name has numbers or special letters should return false", () {
        expect(ValueValidator.validateName("test@"), false);
      });
    });
    group("Email test -", () {
      test("if email is valid should return true", () {
        expect(ValueValidator.validateEmailAddress("test@test.com"), true);
      });
      test("if email is not valid should return false", () {
        expect(ValueValidator.validateEmailAddress("test"), false);
      });
    });
    group("Password test -", () {
      test(
          "if password has at least one upperCase letter and numbers and small letters should return true",
          () {
        expect(ValueValidator.validatePassword("Test123"), true);
      });
      test(
          "if password doesn't has at leat one UpperCase letter should return false",
          () {
        expect(ValueValidator.validatePassword("test123"), false);
      });
      test("if password length < 6 should return false", () {
        expect(ValueValidator.validatePassword("Test1"), false);
      });
      test(
          "if password doesn't has letters should return false",
          () {
        expect(ValueValidator.validatePassword("123456"), false);
      });
    });
    group("Phone test -", () {
      test("if phone doesn't has country key it should return false", () {
        expect(ValueValidator.validatePhone("12345678"), false);
      });
      test(
          "if phone number is not 11 digits besides country key it should return false",
          () {
        expect(ValueValidator.validatePhone("0020101234567"), false);
      });
      test(
          "if phone number country key is +2 and phone is 11 digits it should return true",
          () {
        expect(ValueValidator.validatePhone("+201012345678"), true);
      });
      test(
          "if phone number country key is 002 and phone is 11 digits it should return true",
          () {
        expect(ValueValidator.validatePhone("00201012345678"), true);
      });
    });
  });
}
