import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';
import 'package:moviesto/domain/sign_up/usecases/create_user_with_email_and_password.dart';
import 'package:moviesto/domain/sign_up/usecases/signup_with_facebook.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';

import 'signup_with_google_test.mocks.dart';

void main() {
  late SignupRepository mockSignupRepository;
  late CreateUserWithEmailAndPassword usecase;
  setUp(() {
    mockSignupRepository = MockSignupRepository();
    usecase = CreateUserWithEmailAndPassword(mockSignupRepository);
  });
  final UserEnitity? user = UserEnitity(
    uid: "uid",
    firstName: NameVO("firstName"),
    secondName: NameVO("secondName"),
    phoneNumber: PhoneVO("phoneNumber"),
    email: EmailVO("email"),
    password: PasswordVO("password"),
  );

  test(
    'should get Unit from the repository',
    () async {
      when(mockSignupRepository.createUserWithEmailAndPassword(user: user))
          .thenAnswer((_) async => const Right(unit));
      final result = await usecase(user: user);
      expect(result, equals(const Right(unit)));
      verify(mockSignupRepository.createUserWithEmailAndPassword(user: user))
          .called(1);
      verifyNoMoreInteractions(mockSignupRepository);
    },
  );
}
