part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.showPassword() = ShowPassword;
  const factory SignUpEvent.changeEmail(String? emailInput) = ChangeEmail;
  const factory SignUpEvent.changePassword(String? passwordInput) =
      ChangePassword;
  const factory SignUpEvent.changeFirstName(String? firstNameInput) =
      ChangeFirstName;
  const factory SignUpEvent.changeSecondName(String? secondNameInput) =
      ChangeSecondName;
  const factory SignUpEvent.changePhone(String? phoneInput) = ChangePhone;
  const factory SignUpEvent.signUpWithGoogle() = SignUpWithGoogle;
  const factory SignUpEvent.signUpWithFacebook() = SignUpWithFacebook;
  const factory SignUpEvent.signUpWithEmailAndPassword() =
      SignUpWithEmailAndPassword;
  const factory SignUpEvent.createSocialUser() = CreateSocialUser;
  const factory SignUpEvent.clearCredentials() = ClearCredentials;
  const factory SignUpEvent.clearResult() = ClearResult;
}
