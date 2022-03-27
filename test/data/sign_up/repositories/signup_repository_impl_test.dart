import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:mockito/annotations.dart';
import 'package:moviesto/data/constants/failure_messages.dart';
import 'package:moviesto/data/sign_up/data/local/signup_local_data_source.dart';
import 'package:moviesto/data/sign_up/data/remote/signup_remote_data_source.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/data/sign_up/repositories/signup_repository_impl.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';

import 'signup_repository_impl_test.mocks.dart';

@GenerateMocks(
  [
    SignupRemoteDataSource,
    SignupLocalDataSource,
  ],
)
void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockSignupLocalDataSource mockSignupLocalDataSource;
  late MockSignupRemoteDataSource mockSignupRemoteDataSource;
  late SignupRepositoryImpl usecase;
  late MockGoogleSignIn mockGoogleSignIn;
  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockSignupLocalDataSource = MockSignupLocalDataSource();
    mockSignupRemoteDataSource = MockSignupRemoteDataSource();
    mockGoogleSignIn = MockGoogleSignIn();
    usecase = SignupRepositoryImpl(
      mockFirebaseAuth,
      mockSignupRemoteDataSource,
      mockSignupLocalDataSource,
      mockGoogleSignIn,
    );
  });
  group("Signup Repository test -", () {
    group("Signup with google test -", () {
      test("Google sign in return null should return Cancelled by user failure",
          () async {
        mockGoogleSignIn.setIsCancelled(true);
        final result = await usecase.signupWithGoogle();
        expect(
            result,
            equals(
                left(const CancelledByUser(FailureMessage.CANCELLED_BY_USER))));
      });
      test(
          "when no exceptions should return Social Credential with idToken and accessToken",
          () async {
        final signInAccount = await mockGoogleSignIn.signIn();
        final signInAuthentication = await signInAccount!.authentication;
        final Either<SignupFailures<dynamic>, SocialCredential> result =
            await usecase.signupWithGoogle();
        expect(signInAuthentication, isNotNull);
        expect(mockGoogleSignIn.currentUser, isNotNull);
        expect(signInAuthentication.accessToken, isNotNull);
        expect(signInAuthentication.idToken, isNotNull);
        result.fold(
          (l) => fail("should not return left"),
          (r) {
            expect(r, isA<SocialCredential>());
            expect(r.authCredential, isNotNull);
          },
        );
      });
    });
  });
}
