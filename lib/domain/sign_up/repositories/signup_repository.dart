import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:meta/meta.dart';

abstract class SignupRepository {
  Future<Either<SignupFailures, Unit>> createUserWithEmailAndPassword(
      {@required User user});
  Future<Either<SignupFailures, Unit>> createUserWithSocial(
      {@required User user, @required AuthCredential credential});
}
