import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesto/data/constants/failure_messages.dart';
import 'package:moviesto/data/sign_up/data/local/signup_local_data_source.dart';
import 'package:moviesto/data/sign_up/data/remote/signup_remote_data_source.dart';
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
  final GoogleSignIn _googleSignIn;
  SignupRepositoryImpl(this._firebaseAuth, this._signupRemoteDataSource,
      this._signupLocalDataSource, this._googleSignIn);
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
  Future<Either<SignupFailures, SocialCredential>> signupWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const SignupFailures.cancelledByUser(
            FailureMessage.CANCELLED_BY_USER));
      }
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return Right(SocialCredential(credential));
    } catch (e) {
      return const Left(
          SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR));
    }
  }
}
