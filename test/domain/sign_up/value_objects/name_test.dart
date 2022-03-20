import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/domain/core/value_failures/value_failure.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
void main(){
  const String validName = "lionel";
  const String notValidName = "A";
  group("NameVO test -", (){
    group("isValid test -", (){
      test("if name is valid should return true", (){
        expect(NameVO(validName).isValid, true);
      });
      test("if name is not valid should return false", (){
        expect(NameVO(notValidName).isValid, false);
      });
    });
    group("getNotNullValue test -", (){
      test("if name is valid should return name", (){
        expect(NameVO(validName).getNotNullValue(), validName);
      });
      test("if name is not valid should return empty string", (){
        expect(NameVO(notValidName).getNotNullValue(), "");
      });
    });
    group("value test -", (){
      test("if name is valid should return name", (){
        NameVO nameVO = NameVO(validName);
        nameVO.value.fold((_){}, (r) => expect(r, validName));
      });
      test("if name is not valid should return InvalidName failure", (){
        NameVO nameVO = NameVO(notValidName);
        nameVO.value.fold((l) => expect(l, isA<InvalidName>()), (_) => {});
      });
    });
    group("getFailureValue test -", () {
      test("if name is valid should return null", () {
        NameVO nameVO = NameVO(validName);
        expect(nameVO.getFailureValue(), null);
      });
      test(
          "if name is not valid should return InvalidName failure string value",
          () {
        NameVO nameVO = NameVO(notValidName);
        expect(nameVO.getFailureValue(), isA<String?>());
      });
    });     
  });
}