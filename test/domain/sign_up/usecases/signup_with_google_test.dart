import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';
import 'package:moviesto/domain/sign_up/usecases/signup_with_google.dart';

import 'signup_with_google_test.mocks.dart';

@GenerateMocks([SignupRepository])
void main() {
  late SignupRepository mockSignupRepository;
  late SignupWithGoogle usecase;
  setUp(() {
    mockSignupRepository = MockSignupRepository();
    usecase = SignupWithGoogle(mockSignupRepository);
  });
  SocialCredential credential = SocialCredential(const AuthCredential(
    providerId: 'google.com',
    signInMethod: 'idToken',
    token: 0,
  ));
  test(
    'should get AuthCredential from the repository',
    () async {
      when(mockSignupRepository.signupWithGoogle())
          .thenAnswer((_) async => Right(credential));
      final result = await usecase();
      expect(result, equals(Right(credential)));
      verify(mockSignupRepository.signupWithGoogle()).called(1);
      verifyNoMoreInteractions(mockSignupRepository);
    },
  );
}
