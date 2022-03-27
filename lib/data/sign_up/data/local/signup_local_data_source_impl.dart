import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesto/data/constants/failure_messages.dart';
import 'package:moviesto/data/sign_up/data/local/signup_local_data_source.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';

@Injectable(as: SignupLocalDataSource)
class SignupLocalDataSourceImpl implements SignupLocalDataSource {
  final GetStorage? _box;
  SignupLocalDataSourceImpl(this._box);
  @override
  Future<void> cacheUser(UserModel user) async {
    try {
      await _box?.write(UserModel.USER_ID_BOX_KEY!, user.uid);
    } catch (e) {
      throw const SignupFailures.localFailure(FailureMessage.UNKNOWN_ERROR);
    }
  }
}
