import 'package:equatable/equatable.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';

class UserModel extends Equatable {
  final String? uid, firstName, secondName, phoneNumber, email, password;
  static const String? USER_ID_BOX_KEY = 'uid';
  const UserModel(
    this.uid,
    this.firstName,
    this.secondName,
    this.phoneNumber,
    this.email,
    this.password,
  );
  factory UserModel.fromDomain(UserEnitity user) {
    return UserModel(
      user.uid,
      user.firstName!.getNotNullValue(),
      user.secondName!.getNotNullValue(),
      user.phoneNumber!.getNotNullValue(),
      user.email!.getNotNullValue(),
      user.password!.getNotNullValue(),
    );
  }
  Map<String, String> toJson() {
    return {
      'uid': uid!,
      'first_name': firstName!,
      'second_name': secondName!,
      'phone_number': phoneNumber!,
      'email': email!,
    };
  }

  @override
  List<Object?> get props =>
      [uid, firstName, secondName, phoneNumber, email, password];
}
