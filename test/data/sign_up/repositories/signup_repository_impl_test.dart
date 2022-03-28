import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
import 'package:moviesto/data/sign_up/models/user_model.dart';
import 'package:moviesto/data/sign_up/repositories/signup_repository_impl.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';

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
    UserCredential,
    User,
    FirebaseAuth,
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
  late MockUserCredential mockUserCredential;
  late MockUser mockUser;
  late MockUser mockSocialUser;
  late MockUserCredential mockSocialUserCredential;
  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockSignupLocalDataSource = MockSignupLocalDataSource();
    mockSignupRemoteDataSource = MockSignupRemoteDataSource();
    mockGoogleSignIn = MockGoogleSignIn();
    mockFacebookAuth = MockFacebookAuth();
    mockLoginResult = MockLoginResult();
    mockAccessToken = MockAccessToken();
    mockUserCredential = MockUserCredential();
    mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();
    mockGoogleSignInAccount = MockGoogleSignInAccount();
    mockUser = MockUser();
    mockSocialUser = MockUser();
    mockSocialUserCredential = MockUserCredential();
    usecase = SignupRepositoryImpl(
      mockFirebaseAuth,
      mockSignupRemoteDataSource,
      mockSignupLocalDataSource,
      mockGoogleSignIn,
      mockFacebookAuth,
    );
  });
  final UserEnitity validUser = UserEnitity(
    uid: '',
    email: EmailVO("test@test.com"),
    firstName: NameVO("test"),
    secondName: NameVO("test"),
    password: PasswordVO("Test123456"),
    phoneNumber: PhoneVO("+201012345678"),
  );
  final UserEnitity notValidUser = UserEnitity(
    uid: '',
    email: EmailVO("testtestcom"),
    firstName: NameVO(""),
    secondName: NameVO(""),
    password: PasswordVO("test1"),
    phoneNumber: PhoneVO("2345678"),
  );
  final SocialCredential socialCredential = SocialCredential(
      const AuthCredential(providerId: "", signInMethod: "", token: 0));
  group("Signup Repository test -", () {
    group("Create user with email and password test -", () {
      test("if no exceptions should return unit", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .thenAnswer((_) async => "user-id");
        when(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .thenAnswer((_) async => Future.value());
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenAnswer((_) async => mockUserCredential);
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        verify(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .called(1);
        expect(result, equals(const Right(unit)));
      });
      test("if not valid user should return invalid credentials failure",
          () async {
        final result =
            await usecase.createUserWithEmailAndPassword(user: notValidUser);
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if email already in use should return User Exists", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "email-already-in-use"));
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        expect(
          result,
          equals(
            const Left(
              UserExists(FailureMessage.EMAIL_ALREADY_IN_USE),
            ),
          ),
        );
      });
      test("if invalid email should return Invalid credentials", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "invalid-email"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if weak password should return Invalid credentials", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "weak-password"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if not allowed should return not allowed failure", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "operation-not-allowed"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        expect(
          result,
          equals(
            const Left(
              NotAllowed(FailureMessage.OPERATION_NOT_ALLOWED),
            ),
          ),
        );
      });

      test(
          "if adding user to firestore failed should return Server failure and remove firebase user and signout from firebase",
          () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUser.delete()).thenAnswer((_) async => Future.value());
        when(mockFirebaseAuth.signOut())
            .thenAnswer((_) async => Future.value());
        when(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .thenThrow(const ServerFailure(FailureMessage.UNKNOWN_ERROR));
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        verify(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockUserCredential.user?.delete()).called(greaterThanOrEqualTo(1));
        verify(mockFirebaseAuth.signOut()).called(1);
        verifyNever(mockSignupLocalDataSource
            .cacheUser(UserModel.fromDomain(validUser)));
        expect(result,
            equals(const Left(ServerFailure(FailureMessage.UNKNOWN_ERROR))));
      });
      test("if caching user failed should return unit", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenAnswer((_) async => mockUserCredential);
        when(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .thenAnswer((_) async => "uid");
        when(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .thenThrow(const LocalFailure(FailureMessage.CACHING_ERROR));
        final result =
            await usecase.createUserWithEmailAndPassword(user: validUser);
        verify(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .called(1);
        expect(result, equals(const Right(unit)));
      });
    });
    group("Create user with social test -", () {
      test("if no exceptions should return unit", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .thenAnswer((_) async => "user-id");
        when(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .thenAnswer((_) async => Future.value());
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenAnswer((_) async => mockSocialUserCredential);
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        verify(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockUser.linkWithCredential(socialCredential.authCredential))
            .called(1);
        expect(result, equals(const Right(unit)));
      });
      test("if not valid user should return invalid credentials failure",
          () async {
        final result = await usecase.createUserWithSocial(
            user: notValidUser, credential: socialCredential);
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if email already in use should return User Exists", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "email-already-in-use"));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        expect(
          result,
          equals(
            const Left(
              UserExists(FailureMessage.EMAIL_ALREADY_IN_USE),
            ),
          ),
        );
      });
      test("if invalid email should return Invalid credentials", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "invalid-email"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if weak password should return Invalid credentials", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "weak-password"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if not allowed should return not allowed failure", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenThrow(FirebaseAuthException(code: "operation-not-allowed"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        expect(
          result,
          equals(
            const Left(
              NotAllowed(FailureMessage.OPERATION_NOT_ALLOWED),
            ),
          ),
        );
      });
      test(
          "if adding user to firestore failed should return Server failure and remove firebase user and signout from firebase",
          () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenAnswer((_) async => mockSocialUserCredential);
        when(mockSocialUserCredential.user).thenAnswer((_) => mockSocialUser);
        when(mockUser.delete()).thenAnswer((_) async => Future.value());
        when(mockFirebaseAuth.signOut())
            .thenAnswer((_) async => Future.value());
        when(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .thenThrow(const ServerFailure(FailureMessage.UNKNOWN_ERROR));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        verify(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockUserCredential.user?.delete()).called(greaterThanOrEqualTo(1));
        verify(mockSocialUserCredential.user?.delete()).called(greaterThanOrEqualTo(1));
        verify(mockFirebaseAuth.signOut()).called(1);
        verifyNever(mockSignupLocalDataSource
            .cacheUser(UserModel.fromDomain(validUser)));
        expect(result,
            equals(const Left(ServerFailure(FailureMessage.UNKNOWN_ERROR))));
      });
      test("if caching user failed should return unit", () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenAnswer((_) async => mockUserCredential);
        when(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .thenAnswer((_) async => "uid");
        when(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .thenThrow(const LocalFailure(FailureMessage.CACHING_ERROR));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        verify(mockSignupRemoteDataSource
                .addNewUser(UserModel.fromDomain(validUser)))
            .called(1);
        verify(mockSignupLocalDataSource
                .cacheUser(UserModel.fromDomain(validUser)))
            .called(1);
        expect(result, equals(const Right(unit)));
      });
      test(
          "if social media account already linked should return user exist failure",
          () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenThrow(FirebaseAuthException(code: "provider-already-linked"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        expect(
          result,
          equals(
            const Left(
              UserExists(FailureMessage.EMAIL_ALREADY_IN_USE),
            ),
          ),
        );
      });
      test(
          "if invalid social media account should return invalid credentials failure",
          () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenThrow(FirebaseAuthException(code: "invalid-credential"));
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
      test("if linking social media accoutn failed should return failure",
          () async {
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: validUser.email!.getNotNullValue()!,
                password: validUser.password!.getNotNullValue()!))
            .thenAnswer((_) async => mockUserCredential);
        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockUser.linkWithCredential(socialCredential.authCredential))
            .thenThrow(FirebaseAuthException(code: "invalid-credential"));
        when(mockUser.delete()).thenAnswer((_) async => Future.value());
        when(mockFirebaseAuth.signOut())
            .thenAnswer((_) async => Future.value());
        verifyNever(mockSignupRemoteDataSource.addNewUser(any));
        verifyNever(mockSignupLocalDataSource.cacheUser(any));
        final result = await usecase.createUserWithSocial(
            user: validUser, credential: socialCredential);
        verify(mockUserCredential.user?.delete()).called(greaterThanOrEqualTo(1));
        verify(mockFirebaseAuth.signOut()).called(1);
        expect(
          result,
          equals(
            const Left(
              InvalidCredential(FailureMessage.INVALID_CREDENTIALS),
            ),
          ),
        );
      });
    });
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
