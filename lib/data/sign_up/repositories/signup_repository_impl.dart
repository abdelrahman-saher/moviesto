import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesto/data/constants/failure_messages.dart';
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
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  SignupRepositoryImpl(this._firebaseAuth, this._signupRemoteDataSource,
      this._signupLocalDataSource, this._googleSignIn, this._facebookAuth);
  @override
  Future<Either<SignupFailures, Unit>> createUserWithEmailAndPassword(
      {UserEnitity? user}) async {
    UserCredential? authResult;
    try {
      if (!(user!.email!.isValid &&
          user.password!.isValid &&
          user.phoneNumber!.isValid &&
          user.firstName!.isValid &&
          user.secondName!.isValid)) {
        return left(
          const SignupFailures.invalidCredential(
              FailureMessage.INVALID_CREDENTIALS),
        );
      }
      authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email!.getNotNullValue()!,
        password: user.password!.getNotNullValue()!,
      );
      final String? uid =
          await _signupRemoteDataSource.addNewUser(UserModel.fromDomain(user));
      user.uid = uid;
      await _signupLocalDataSource.cacheUser(UserModel.fromDomain(user));
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return const Left(
          SignupFailures.userExists(FailureMessage.EMAIL_ALREADY_IN_USE),
        );
      } else if (e.code == "invalid-email") {
        return const Left(
          SignupFailures.invalidCredential(FailureMessage.INVALID_CREDENTIALS),
        );
      } else if (e.code == "operation-not-allowed") {
        return const Left(
          SignupFailures.notAllowed(FailureMessage.OPERATION_NOT_ALLOWED),
        );
      } else if (e.code == "weak-password") {
        return const Left(
          SignupFailures.invalidCredential(FailureMessage.INVALID_CREDENTIALS),
        );
      } else {
        return const Left(
          SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR),
        );
      }
    } catch (e) {
      if (e is ServerFailure) {
        await authResult!.user?.delete();
        await _firebaseAuth.signOut();
      } else if (e is LocalFailure &&
          e.message == FailureMessage.CACHING_ERROR) {
        return const Right(unit);
      }
      return const Left(
        SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR),
      );
    }
  }

  @override
  Future<Either<SignupFailures, Unit>> createUserWithSocial(
      {UserEnitity? user, SocialCredential? credential}) async {
    UserCredential? authResult;
    UserCredential? socialAuthResult;
    try {
      if (!(user!.email!.isValid &&
          user.password!.isValid &&
          user.phoneNumber!.isValid &&
          user.firstName!.isValid &&
          user.secondName!.isValid)) {
        return left(
          const SignupFailures.invalidCredential(
              FailureMessage.INVALID_CREDENTIALS),
        );
      }
      authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email!.getNotNullValue()!,
        password: user.password!.getNotNullValue()!,
      );
      socialAuthResult =
          await authResult.user?.linkWithCredential(credential!.authCredential);
      final String? uid =
          await _signupRemoteDataSource.addNewUser(UserModel.fromDomain(user));
      user.uid = uid;
      await _signupLocalDataSource.cacheUser(UserModel.fromDomain(user));
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (authResult != null && authResult.user != null) {
        await authResult.user?.delete();
        await _firebaseAuth.signOut();
      }
      if (e.code == "email-already-in-use") {
        return const Left(
          SignupFailures.userExists(FailureMessage.EMAIL_ALREADY_IN_USE),
        );
      } else if (e.code == "invalid-email") {
        return const Left(
          SignupFailures.invalidCredential(FailureMessage.INVALID_CREDENTIALS),
        );
      } else if (e.code == "operation-not-allowed") {
        return const Left(
          SignupFailures.notAllowed(FailureMessage.OPERATION_NOT_ALLOWED),
        );
      } else if (e.code == "weak-password") {
        return const Left(
          SignupFailures.invalidCredential(FailureMessage.INVALID_CREDENTIALS),
        );
      } else if (e.code == "provider-already-linked") {
        return const Left(
          SignupFailures.userExists(FailureMessage.EMAIL_ALREADY_IN_USE),
        );
      } else if (e.code == "invalid-credential") {
        return const Left(
          SignupFailures.invalidCredential(FailureMessage.INVALID_CREDENTIALS),
        );
      } else {
        return const Left(
          SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR),
        );
      }
    } catch (e) {
      if (e is ServerFailure) {
        if (socialAuthResult != null && socialAuthResult.user != null) {
          await socialAuthResult.user?.delete();
        }
        await authResult!.user?.delete();
        await _firebaseAuth.signOut();
      } else if (e is LocalFailure &&
          e.message == FailureMessage.CACHING_ERROR) {
        return const Right(unit);
      }
      return const Left(
        SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR),
      );
    }
  }

  @override
  Future<Either<SignupFailures, SocialCredential>> signupWithFacebook() async {
    try {
      final facebookUser = await _facebookAuth.login();
      if (facebookUser.status == LoginStatus.cancelled) {
        return left(const SignupFailures.cancelledByUser(
            FailureMessage.CANCELLED_BY_USER));
      } else if (facebookUser.status == LoginStatus.failed) {
        return const Left(
            SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR));
      }
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(facebookUser.accessToken!.token);
      final userData = await _facebookAuth.getUserData();
      final String? email = userData['email'];
      if (email == null || email.isEmpty) {
        return const Left(
            SignupFailures.invalidAccount(FailureMessage.INVALID_CREDENTIALS));
      }
      return Right(SocialCredential(facebookAuthCredential, email: email));
    } catch (e) {
      return const Left(
          SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR));
    }
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
      return Right(SocialCredential(credential, email: googleUser.email));
    } catch (e) {
      return const Left(
          SignupFailures.serverFailure(FailureMessage.UNKNOWN_ERROR));
    }
  }
}
