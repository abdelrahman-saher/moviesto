import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';
void main(){
  const String validPhone = "00201012345678";
  const String notValidPhone = "123456789";
  group("PhoneVO test -", (){
    group("isValid test -", (){
      test("if phone is valid should return true", (){
        expect(PhoneVO(validPhone).isValid, true);
      });
      test("if phone is not valid should return false", (){
        expect(PhoneVO(notValidPhone).isValid, false);
      });
    });
    group("getNotNullValue test -", (){
      test("if phone is valid should return phone", (){
        expect(PhoneVO(validPhone).getNotNullValue(), validPhone);
      });
      test("if phone is not valid should return empty string", (){
        expect(PhoneVO(notValidPhone).getNotNullValue(), "");
      });
    });
    group("value test -", (){
      test("if phone is valid should return phone", (){
        PhoneVO phoneVO = PhoneVO(validPhone);
        phoneVO.value.fold((_){}, (r) => expect(r, validPhone));
      });
      test("if phone is not valid should return InvalidPhone failure", (){
        PhoneVO phoneVO = PhoneVO(validPhone);
        phoneVO.value.fold((l) => expect(l, isA<InvalidPhone>()), (_) => {});
      });
    });     
    group("getFailureValue test -", () {
      test("if phone is valid should return null", () {
        PhoneVO phoneVO = PhoneVO(validPhone);
        expect(phoneVO.getFailureValue(), null);
      });
      test(
          "if phone is not valid should return InvalidPhone failure string value",
          () {
        PhoneVO phoneVO = PhoneVO(notValidPhone);
        expect(phoneVO.getFailureValue(), isA<String?>());
      });
    }); 
  });
}