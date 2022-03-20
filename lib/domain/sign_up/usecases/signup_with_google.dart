import 'package:dartz/dartz.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';

class SignupWithGoogle {
  SignupWithGoogle(this.signUpRepository);
  final SignupRepository signUpRepository;
  Future<Either<SignupFailures, SocialCredential>> call() async {
    return await signUpRepository.signupWithGoogle();
  }
}
