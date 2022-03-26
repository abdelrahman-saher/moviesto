import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesto/data/sign_up/data/local/signup_local_data_source.dart';
import 'package:moviesto/data/sign_up/data/remote/signup_remote_data_source.dart';
import 'package:moviesto/data/sign_up/models/user_model.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';

@Injectable(as: SignupRepository)
class SignupRepositoryImpl implements SignupRepository {
  final FirebaseAuth _firebaseAuth;
  final SignupRemoteDataSource _signupRemoteDataSource;
  final SignupLocalDataSource _signupLocalDataSource;
  SignupRepositoryImpl(this._firebaseAuth, this._signupRemoteDataSource,
      this._signupLocalDataSource);
  @override
  Future<Either<SignupFailures, Unit>> createUserWithEmailAndPassword(
      {UserEnitity? user}) async {
    // TODO: implement signupWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<SignupFailures, Unit>> createUserWithSocial(
      {UserEnitity? user, SocialCredential? credential}) {
    // TODO: implement signupWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<SignupFailures, SocialCredential>> signupWithFacebook() {
    // TODO: implement signupWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<SignupFailures, SocialCredential>> signupWithGoogle() {
    // TODO: implement signupWithGoogle
    throw UnimplementedError();
  }
}
