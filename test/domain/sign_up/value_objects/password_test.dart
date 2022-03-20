import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
void main(){
  const String validPassword = "Test12345";
  const String notValidPassword = "123456789";
  group("PasswordVO test -", (){
    group("isValid test -", (){
      test("if password is valid should return true", (){
        expect(PasswordVO(validPassword).isValid, true);
      });
      test("if password is not valid should return false", (){
        expect(PasswordVO(notValidPassword).isValid, false);
      });
    });
    group("getNotNullValue test -", (){
      test("if password is valid should return password", (){
        expect(PasswordVO(validPassword).getNotNullValue(), validPassword);
      });
      test("if password is not valid should return empty string", (){
        expect(PasswordVO(notValidPassword).getNotNullValue(), "");
      });
    });
    group("value test -", (){
      test("if password is valid should return password", (){
        PasswordVO passwordVO = PasswordVO(validPassword);
        passwordVO.value.fold((_){}, (r) => expect(r, validPassword));
      });
      test("if password is not valid should return InvalidPassword failure", (){
        PasswordVO passwordVO = PasswordVO(notValidPassword);
        passwordVO.value.fold((l) => expect(l, isA<InvalidPassword>()), (_) => {});
      });
    });     
  });
}