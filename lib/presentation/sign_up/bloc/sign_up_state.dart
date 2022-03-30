part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required bool? isLoading,
    @required NameVO? firstName,
    @required NameVO? secondName,
    @required EmailVO? emailVO,
    @required PhoneVO? phoneNumber,
    @required PasswordVO? password,
    @required PasswordVO? confirmPassword,
    @required bool? showErrorMessages,
    @required Option<Either<SignupFailures, SocialCredential>>? credential,
    @required Option<Either<SignupFailures, Unit>>? result,
    @required bool? showPassword,
    @required bool? showConfirmPassword,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
        isLoading: false,
        firstName: NameVO(""),
        secondName: NameVO(""),
        emailVO: EmailVO(""),
        phoneNumber: PhoneVO(""),
        password: PasswordVO(""),
        confirmPassword: PasswordVO(""),
        showErrorMessages: false,
        credential: none(),
        result: none(),
        showPassword: false,
        showConfirmPassword: false,
      );
}
