import 'package:dartz/dartz.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';

class SignupWithFacebook {
  SignupWithFacebook(this.signUpRepository);
  final SignupRepository signUpRepository;
  //starts singing in with facebook then returns the social credential
  //then redirects to the signup page with the social credential
  Future<Either<SignupFailures, SocialCredential>> call() async {
    return await signUpRepository.signupWithFacebook();
  }
}
