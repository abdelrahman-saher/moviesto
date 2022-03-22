import 'package:dartz/dartz.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:meta/meta.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';

import '../entities/user.dart';

abstract class SignupRepository {
  Future<Either<SignupFailures, SocialCredential>> signupWithFacebook();
  Future<Either<SignupFailures, SocialCredential>> signupWithGoogle();
  Future<Either<SignupFailures, Unit>> createUserWithEmailAndPassword(
      {@required UserEnitity? user});
  Future<Either<SignupFailures, Unit>> createUserWithSocial(
      {@required UserEnitity? user, @required SocialCredential? credential});
}
