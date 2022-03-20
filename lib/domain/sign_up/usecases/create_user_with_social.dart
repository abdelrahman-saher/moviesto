import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';

import '../entities/user.dart';

class CreateUserWithSocial {
  CreateUserWithSocial(this.signUpRepository);
  final SignupRepository signUpRepository;
  //creting user with user details and social credentials then returns unit if signup successfull or failure if not
  Future<Either<SignupFailures, Unit>> call(
      {@required User? user, @required SocialCredential? credential}) async {
    return await signUpRepository.createUserWithSocial(
      user: user,
      credential: credential,
    );
  }
}
