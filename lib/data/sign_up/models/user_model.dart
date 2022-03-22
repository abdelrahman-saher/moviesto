import 'package:equatable/equatable.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';

class UserModel extends Equatable {
  final String? firstName, secondName, phoneNumber, email, password;
  const UserModel(
    this.firstName,
    this.secondName,
    this.phoneNumber,
    this.email,
    this.password,
  );
  factory UserModel.fromDomain(User user) {
    return UserModel(
      user.firstName!.getNotNullValue(),
      user.secondName!.getNotNullValue(),
      user.phoneNumber!.getNotNullValue(),
      user.email!.getNotNullValue(),
      user.password!.getNotNullValue(),
    );
  }
  @override
  List<Object?> get props =>
      [firstName, secondName, phoneNumber, email, password];
}
