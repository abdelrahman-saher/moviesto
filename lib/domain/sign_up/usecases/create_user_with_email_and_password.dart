import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';

import '../entities/user.dart';

class CreateUserWithEmailAndPassword {
  CreateUserWithEmailAndPassword(this.signUpRepository);
  final SignupRepository signUpRepository;
    //creting user with user details which contain email and password then returns unit if signup successfull or failure if not
  Future<Either<SignupFailures, Unit>> call({@required UserEnitity? user}) async {
    return await signUpRepository.createUserWithEmailAndPassword(
      user: user,
    );
  }
}
