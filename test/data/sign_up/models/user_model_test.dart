import 'package:flutter_test/flutter_test.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';

void main() {
  UserModel userModel = const UserModel(
      'fname', 'sname', '00201012345678', 'test@test.com', 'Pass123');
  User user = User(
    uid: '',
    firstName: NameVO('fname'),
    secondName: NameVO('sname'),
    phoneNumber: PhoneVO('00201012345678'),
    email: EmailVO('test@test.com'),
    password: PasswordVO('Pass123'),
  );
  group("User model test -", () {
    test("fromDomain", () {
      UserModel testModel = UserModel.fromDomain(user);
      expect(testModel, equals(userModel));
    });
  });
}
