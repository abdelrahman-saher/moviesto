import 'package:moviesto/data/sign_up/models/user_model.dart';

abstract class SignupLocalDataSource {
  Future<void> cacheUser(UserModel user);
}
