import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';
import 'package:moviesto/presentation/sign_up/bloc/sign_up_bloc.dart';

import '../../../domain/sign_up/usecases/signup_with_google_test.mocks.dart';

@GenerateMocks([],
    customMocks: [MockSpec<SignupRepository>(returnNullOnMissingStub: true)])
void main() {
  late SignUpBloc signUpBloc;
  late MockSignupRepository mockSignupRepository;
  setUp(() {
    mockSignupRepository = MockSignupRepository();
    signUpBloc = SignUpBloc(mockSignupRepository);
  });
  final SignUpState initialState = SignUpState.initial();
  const String? email = "test@test.com";
  const String? firstName = "test";
  const String? secondName = "test";
  const String? phone = "+201020304050";
  const String? password = "Test123455";
  const String? notValidemail = "testtestcom";
  const String? notValidfirstName = "";
  const String? notValidsecondName = "";
  const String? notValidphone = "+020304050";
  const String? notValidpassword = "t123455";
  SocialCredential? socialCredential = SocialCredential(
    const AuthCredential(
        providerId: "providerId", signInMethod: "signInMethod"),
    email: email,
  );
  UserEnitity validUserEnitity = UserEnitity(
    uid: "",
    email: EmailVO(email),
    firstName: NameVO(firstName),
    secondName: NameVO(secondName),
    phoneNumber: PhoneVO(phone),
    password: PasswordVO(password),
  );
  final SignUpState stateWithCredentials = SignUpState.initial().copyWith(
    credential: optionOf(
      Right(socialCredential),
    ),
  );
  final SignUpState stateWithResult = SignUpState.initial().copyWith(
    result: optionOf(
      const Right(unit),
    ),
  );
  group(
    "Sign Up Bloc test -",
    () {
      test("initial state", () {
        expect(signUpBloc.state, initialState);
      });
      blocTest(
        "should change email to input value",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ChangeEmail(email)),
        expect: () => [
          initialState.copyWith(emailVO: EmailVO(email)),
        ],
      );
      blocTest(
        "should change first name to input value",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ChangeFirstName(firstName)),
        expect: () => [
          initialState.copyWith(firstName: NameVO(firstName)),
        ],
      );
      blocTest(
        "should change second name to input value",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ChangeSecondName(secondName)),
        expect: () => [
          initialState.copyWith(secondName: NameVO(secondName)),
        ],
      );
      blocTest(
        "should change phone to input value",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ChangePhone(phone)),
        expect: () => [
          initialState.copyWith(phoneNumber: PhoneVO(phone)),
        ],
      );
      blocTest(
        "should change password to input value",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ChangePassword(password)),
        expect: () => [
          initialState.copyWith(password: PasswordVO(password)),
        ],
      );
      blocTest(
        "show password should be true if showPassword called once",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ShowPassword()),
        expect: () => [
          initialState.copyWith(showPassword: true),
        ],
      );
      blocTest(
        "show password should be false if showPassword called twice",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc
          ..add(const ShowPassword())
          ..add(const ShowPassword()),
        expect: () => [
          initialState.copyWith(showPassword: true),
          initialState.copyWith(showPassword: false),
        ],
      );

      blocTest(
        "should change credentials to none",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ClearCredentials()),
        expect: () => [
          stateWithCredentials.copyWith(credential: none()),
        ],
      );
      blocTest(
        "should change result to none",
        build: () => signUpBloc,
        act: (SignUpBloc bloc) => bloc.add(const ClearResult()),
        expect: () => [
          stateWithResult.copyWith(result: none()),
        ],
      );
      group("SignUp with google test -", () {
        blocTest(
            "Signup with google successful should set credentials and email",
            build: () => signUpBloc,
            act: (SignUpBloc bloc) {
              when(mockSignupRepository.signupWithGoogle())
                  .thenAnswer((_) async => Right(socialCredential));
              bloc.add(const SignUpWithGoogle());
            },
            expect: () => [
                  initialState.copyWith(isLoading: true),
                  initialState.copyWith(
                    isLoading: false,
                    credential: some(
                      Right(socialCredential),
                    ),
                    emailVO: EmailVO(socialCredential.email!),
                  ),
                ],
            verify: (_) {
              verify(mockSignupRepository.signupWithGoogle()).called(1);
            });
        blocTest(
            "Signup with google failed should set credentials to signup failure",
            build: () => signUpBloc,
            act: (SignUpBloc bloc) {
              when(mockSignupRepository.signupWithGoogle()).thenAnswer(
                  (_) async => const Left(SignupFailures.serverFailure("")));
              bloc.add(const SignUpWithGoogle());
            },
            expect: () => [
                  initialState.copyWith(isLoading: true),
                  initialState.copyWith(
                    isLoading: false,
                    credential: some(
                      const Left(SignupFailures.serverFailure("")),
                    ),
                  ),
                ],
            verify: (_) {
              verify(mockSignupRepository.signupWithGoogle()).called(1);
            });
      });
      group("SignUp with facebook test -", () {
        blocTest(
            "Signup with facebook successful should set credentials and email",
            build: () => signUpBloc,
            act: (SignUpBloc bloc) {
              when(mockSignupRepository.signupWithFacebook())
                  .thenAnswer((_) async => Right(socialCredential));
              bloc.add(const SignUpWithFacebook());
            },
            expect: () => [
                  initialState.copyWith(isLoading: true),
                  initialState.copyWith(
                    isLoading: false,
                    credential: some(
                      Right(socialCredential),
                    ),
                    emailVO: EmailVO(socialCredential.email!),
                  ),
                ],
            verify: (_) {
              verify(mockSignupRepository.signupWithFacebook()).called(1);
            });
        blocTest(
            "Signup with facebook failed should set credentials to signup failure",
            build: () => signUpBloc,
            act: (SignUpBloc bloc) {
              when(mockSignupRepository.signupWithFacebook()).thenAnswer(
                  (_) async => const Left(SignupFailures.serverFailure("")));
              bloc.add(const SignUpWithFacebook());
            },
            expect: () => [
                  initialState.copyWith(isLoading: true),
                  initialState.copyWith(
                    isLoading: false,
                    credential: some(
                      const Left(SignupFailures.serverFailure("")),
                    ),
                  ),
                ],
            verify: (_) {
              verify(mockSignupRepository.signupWithFacebook()).called(1);
            });
      });
      group(
        "Create social user test -",
        () {
          blocTest("if no credentials should do nothing",
              build: () => signUpBloc,
              act: (SignUpBloc bloc) => bloc.add(const CreateSocialUser()),
              expect: () => [],
              verify: (_) {
                verifyNever(mockSignupRepository.createUserWithSocial(
                    user: validUserEnitity, credential: socialCredential));
              });
          blocTest("if invalid input should set showErrors to true",
              build: () {
                when(mockSignupRepository.signupWithFacebook())
                    .thenAnswer((_) async => Right(socialCredential));
                return signUpBloc
                  ..add(const ChangeFirstName(notValidfirstName))
                  ..add(const ChangeSecondName(notValidsecondName))
                  ..add(const ChangePassword(notValidpassword))
                  ..add(const ChangePhone(notValidphone))
                  ..add(const SignUpWithFacebook());
              },
              act: (SignUpBloc bloc) {
                return bloc.add(const CreateSocialUser());
              },
              skip: 3,
              expect: () => [
                    initialState.copyWith(
                      credential: some(
                        Right(socialCredential),
                      ),
                      firstName: NameVO(notValidfirstName),
                      secondName: NameVO(notValidsecondName),
                      password: PasswordVO(notValidpassword),
                      phoneNumber: PhoneVO(notValidphone),
                      emailVO: EmailVO(socialCredential.email!),
                      showErrorMessages: true,
                    ),
                  ],
              verify: (_) {
                verifyNever(mockSignupRepository.createUserWithSocial(
                    user: validUserEnitity, credential: socialCredential));
              });
          blocTest(
              "if valid input and create social user should set result to unit and isLoading to false showErrors to true",
              build: () {
                when(mockSignupRepository.signupWithFacebook())
                    .thenAnswer((_) async => Right(socialCredential));
                return signUpBloc
                  ..add(const ChangeFirstName(firstName))
                  ..add(const ChangeSecondName(secondName))
                  ..add(const ChangePassword(password))
                  ..add(const ChangePhone(phone))
                  ..add(const SignUpWithFacebook());
              },
              act: (SignUpBloc bloc) {
                when(mockSignupRepository.createUserWithSocial(
                        user: validUserEnitity, credential: socialCredential))
                    .thenAnswer((_) async => const Right(unit));
                bloc.add(const CreateSocialUser());
              },
              skip: 6,
              expect: () => [
                    initialState.copyWith(
                      credential: some(
                        Right(socialCredential),
                      ),
                      firstName: NameVO(firstName),
                      secondName: NameVO(secondName),
                      password: PasswordVO(password),
                      phoneNumber: PhoneVO(phone),
                      emailVO: EmailVO(socialCredential.email!),
                      showErrorMessages: false,
                      isLoading: true,
                    ),
                    initialState.copyWith(
                      showErrorMessages: true,
                      result: some(const Right(unit)),
                      credential: some(
                        Right(socialCredential),
                      ),
                      firstName: NameVO(firstName),
                      secondName: NameVO(secondName),
                      password: PasswordVO(password),
                      phoneNumber: PhoneVO(phone),
                      emailVO: EmailVO(socialCredential.email!),
                    ),
                  ],
              verify: (_) {
                verify(mockSignupRepository.createUserWithSocial(
                        user: validUserEnitity, credential: socialCredential))
                    .called(1);
              });
        },
      );
      group("Create user with email and password test -", () {
        blocTest("if invalid input should set showErrors to true",
            build: () {
              return signUpBloc
                ..add(const ChangeFirstName(notValidfirstName))
                ..add(const ChangeSecondName(notValidsecondName))
                ..add(const ChangePassword(notValidpassword))
                ..add(const ChangePhone(notValidphone))
                ..add(const ChangeEmail(notValidemail));
            },
            act: (SignUpBloc bloc) {
              return bloc.add(const SignUpWithEmailAndPassword());
            },
            skip: 1,
            expect: () => [
                  initialState.copyWith(
                    firstName: NameVO(notValidfirstName),
                    secondName: NameVO(notValidsecondName),
                    password: PasswordVO(notValidpassword),
                    phoneNumber: PhoneVO(notValidphone),
                    emailVO: EmailVO(notValidemail),
                    showErrorMessages: true,
                  ),
                ],
            verify: (_) {
              verifyNever(mockSignupRepository.createUserWithEmailAndPassword(
                user: validUserEnitity,
              ));
            });
        blocTest(
            "if valid input and create user should set result to unit and isLoading to false showErrors to true",
            build: () {
              return signUpBloc
                ..add(const ChangeFirstName(firstName))
                ..add(const ChangeSecondName(secondName))
                ..add(const ChangePassword(password))
                ..add(const ChangePhone(phone))
                ..add(const ChangeEmail(email));
            },
            act: (SignUpBloc bloc) {
              when(mockSignupRepository.createUserWithEmailAndPassword(
                      user: validUserEnitity))
                  .thenAnswer((_) async => const Right(unit));
              bloc.add(const SignUpWithEmailAndPassword());
            },
            skip: 5,
            expect: () => [
                  initialState.copyWith(
                    firstName: NameVO(firstName),
                    secondName: NameVO(secondName),
                    password: PasswordVO(password),
                    phoneNumber: PhoneVO(phone),
                    emailVO: EmailVO(email),
                    showErrorMessages: false,
                    isLoading: true,
                  ),
                  initialState.copyWith(
                    showErrorMessages: true,
                    result: some(const Right(unit)),
                    firstName: NameVO(firstName),
                    secondName: NameVO(secondName),
                    password: PasswordVO(password),
                    phoneNumber: PhoneVO(phone),
                    emailVO: EmailVO(email),
                  ),
                ],
            verify: (_) {
              verify(mockSignupRepository.createUserWithEmailAndPassword(
                user: validUserEnitity,
              )).called(1);
            });
      });
      /** signUpWithEmailAndPassword
           
      */
    },
  );
}
