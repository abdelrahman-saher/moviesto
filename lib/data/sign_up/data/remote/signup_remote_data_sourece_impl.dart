import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesto/data/constants/database_contract.dart';
import 'package:moviesto/data/sign_up/data/remote/signup_remote_data_source.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';

import '../../../constants/failure_messages.dart';

@Injectable(as: SignupRemoteDataSource)
class SignupRemoteDataSourceImpl implements SignupRemoteDataSource {
  final FirebaseFirestore _firebaseFirestore;
  SignupRemoteDataSourceImpl(this._firebaseFirestore);
  @override
  Future<String?> addNewUser(UserModel user) async {
    try {
      final users = _firebaseFirestore.collection(DBContract.USERSCOLLECTION);
      await users.doc(user.uid).set(user.toJson());
      return user.uid;
    } catch (e) {
      throw const SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR);
    }
  }
}
