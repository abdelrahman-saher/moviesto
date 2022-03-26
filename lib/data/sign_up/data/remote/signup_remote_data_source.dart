import 'package:moviesto/data/sign_up/models/user_model.dart';

abstract class SignupRemoteDataSource {
  Future<String?> addNewUser(UserModel user);
}
