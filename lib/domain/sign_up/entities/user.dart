import 'package:meta/meta.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';

class UserEnitity {
  final String? uid;
  final NameVO? firstName, secondName;
  final PhoneVO? phoneNumber;
  final EmailVO? email;
  final PasswordVO? password;
  UserEnitity({
    @required this.uid,
    @required this.firstName,
    @required this.secondName,
    @required this.phoneNumber,
    @required this.email,
    @required this.password,
  });
}
