import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviesto/data/constants/failure_messages.dart';
import 'package:moviesto/data/sign_up/data/local/signup_local_data_source.dart';
import 'package:moviesto/data/sign_up/data/remote/signup_remote_data_source.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/data/sign_up/repositories/signup_repository_impl.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';

import 'signup_repository_impl_test.mocks.dart';

mixin LegacyOperator {
  @override
  bool operator ==(dynamic other) => super == other;
  @override
  int get hashCode => super.hashCode;
}

@GenerateMocks(
  [
    SignupRemoteDataSource,
    SignupLocalDataSource,
    FacebookAuth,
    LoginResult,
    AccessToken,
    GoogleSignIn,
    GoogleSignInAuthentication,
    GoogleSignInAccount,
  ],
)
void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockSignupLocalDataSource mockSignupLocalDataSource;
  late MockSignupRemoteDataSource mockSignupRemoteDataSource;
  late SignupRepositoryImpl usecase;
  late MockGoogleSignIn mockGoogleSignIn;
  late MockGoogleSignInAccount mockGoogleSignInAccount;
  late MockGoogleSignInAuthentication mockGoogleSignInAuthentication;
  late MockFacebookAuth mockFacebookAuth;
  late MockLoginResult mockLoginResult;
  late MockAccessToken mockAccessToken;
  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockSignupLocalDataSource = MockSignupLocalDataSource();
    mockSignupRemoteDataSource = MockSignupRemoteDataSource();
    mockGoogleSignIn = MockGoogleSignIn();
    mockFacebookAuth = MockFacebookAuth();
    mockLoginResult = MockLoginResult();
    mockAccessToken = MockAccessToken();
    mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();
    mockGoogleSignInAccount = MockGoogleSignInAccount();
    usecase = SignupRepositoryImpl(
      mockFirebaseAuth,
      mockSignupRemoteDataSource,
      mockSignupLocalDataSource,
      mockGoogleSignIn,
      mockFacebookAuth,
    );
  });
  group("Signup Repository test -", () {
    group("Signup with google test -", () {
      test("Google sign in return null should return Cancelled by user failure",
          () async {
        when(mockGoogleSignIn.signIn()).thenAnswer((_) => Future.value(null));
        final result = await usecase.signupWithGoogle();
        expect(
            result,
            equals(
                left(const CancelledByUser(FailureMessage.CANCELLED_BY_USER))));
      });
      test(
          "when no exceptions should return Social Credential with idToken and accessToken",
          () async {
        when(mockGoogleSignIn.signIn())
            .thenAnswer((_) async => mockGoogleSignInAccount);
        when(mockGoogleSignInAccount.authentication)
            .thenAnswer((_) async => mockGoogleSignInAuthentication);
        when(mockGoogleSignInAuthentication.accessToken).thenAnswer((_) => "");
        when(mockGoogleSignInAuthentication.idToken).thenAnswer((_) => "");
        when(mockGoogleSignInAccount.email).thenAnswer((_) => "");
        final Either<SignupFailures<dynamic>, SocialCredential> result =
            await usecase.signupWithGoogle();
        result.fold(
          (l) => fail("should not return left"),
          (r) {
            expect(r, isA<SocialCredential>());
            expect(r.authCredential, isNotNull);
            expect(r.email, isNotNull);
          },
        );
      });
    });

    group("Signup with facebook test -", () {
      test(
          "facebook sign in status is cancelled should return Cancelled by user failure",
          () async {
        when(mockFacebookAuth.login()).thenAnswer((_) async => mockLoginResult);
        when(mockLoginResult.status).thenReturn(LoginStatus.cancelled);
        final result = await usecase.signupWithFacebook();
        expect(
            result,
            equals(
                left(const CancelledByUser(FailureMessage.CANCELLED_BY_USER))));
      });
      test("facebook sign in status is failed should return server failure",
          () async {
        when(mockFacebookAuth.login()).thenAnswer((_) async => mockLoginResult);
        when(mockLoginResult.status).thenReturn(LoginStatus.failed);
        final result = await usecase.signupWithFacebook();
        expect(result,
            equals(left(const ServerFailure(FailureMessage.UNKNOWN_ERROR))));
      });
      test("when email is null should return invalid account failure",
          () async {
        when(mockFacebookAuth.login()).thenAnswer((_) async => mockLoginResult);
        when(mockLoginResult.status).thenReturn(LoginStatus.success);
        when(mockLoginResult.accessToken).thenReturn(mockAccessToken);
        when(mockAccessToken.token).thenReturn("");
        when(mockFacebookAuth.getUserData())
            .thenAnswer((_) async => {"email": null});
        final Either<SignupFailures<dynamic>, SocialCredential> result =
            await usecase.signupWithFacebook();
        expect(
            result,
            equals(left(
                const InvalidAccount(FailureMessage.INVALID_CREDENTIALS))));
      });
      test(
          "when no exceptions should return Social Credential with accessToken",
          () async {
        when(mockFacebookAuth.login()).thenAnswer((_) async => mockLoginResult);
        when(mockLoginResult.status).thenReturn(LoginStatus.success);
        when(mockLoginResult.accessToken).thenReturn(mockAccessToken);
        when(mockAccessToken.token).thenReturn("");
        when(mockFacebookAuth.getUserData())
            .thenAnswer((_) async => {"email": "email"});
        final Either<SignupFailures<dynamic>, SocialCredential> result =
            await usecase.signupWithFacebook();
        result.fold(
          (l) => fail("should not return left"),
          (r) {
            expect(r, isA<SocialCredential>());
            expect(r.authCredential, isNotNull);
            expect(r.email, isNotNull);
          },
        );
      });
    });
  });
}
