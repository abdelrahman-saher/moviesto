import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';

void main() {
  const UserModel userModel = UserModel(
      '123', 'fname', 'sname', '00201012345678', 'test@test.com', 'Pass123');
  final User user = User(
    uid: '123',
    firstName: NameVO('fname'),
    secondName: NameVO('sname'),
    phoneNumber: PhoneVO('00201012345678'),
    email: EmailVO('test@test.com'),
    password: PasswordVO('Pass123'),
  );
  const Map<String, String> jsonResult = {
    'uid': '123',
    'first_name': 'fname',
    'second_name': 'sname',
    'phone_number': '00201012345678',
    'email': 'test@test.com',
  };
  group("User model test -", () {
    test("fromDomain", () {
      UserModel testModel = UserModel.fromDomain(user);
      expect(testModel, equals(userModel));
    });
    test("toJson", () {
      expect(userModel.toJson(), equals(jsonResult));
    });
  });
}
