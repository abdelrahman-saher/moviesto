import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesto/data/sign_up/failures.dart';
import 'package:moviesto/domain/sign_up/entities/social_credential.dart';
import 'package:moviesto/domain/sign_up/entities/user.dart';
import 'package:moviesto/domain/sign_up/repositories/signup_repository.dart';
import 'package:moviesto/domain/sign_up/value_objects/email.dart';
import 'package:moviesto/domain/sign_up/value_objects/name.dart';
import 'package:moviesto/domain/sign_up/value_objects/password.dart';
import 'package:moviesto/domain/sign_up/value_objects/phone.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignupRepository _signupRepository;
  SignUpBloc(this._signupRepository) : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is ChangeEmail) {
        emit(
          state.copyWith(
            emailVO: EmailVO(event.emailInput!),
          ),
        );
      } else if (event is ChangeFirstName) {
        emit(
          state.copyWith(
            firstName: NameVO(event.firstNameInput!),
          ),
        );
      } else if (event is ChangeSecondName) {
        emit(
          state.copyWith(
            secondName: NameVO(event.secondNameInput!),
          ),
        );
      } else if (event is ChangePhone) {
        emit(
          state.copyWith(
            phoneNumber: PhoneVO(event.phoneInput!),
          ),
        );
      } else if (event is ChangePassword) {
        emit(
          state.copyWith(
            password: PasswordVO(event.passwordInput!),
          ),
        );
      } else if (event is ShowPassword) {
        emit(
          state.copyWith(
            showPassword: !state.showPassword!,
          ),
        );
      } else if (event is ClearCredentials) {
        emit(
          state.copyWith(
            credential: none(),
          ),
        );
      } else if (event is ClearResult) {
        emit(
          state.copyWith(
            result: none(),
          ),
        );
      } else if (event is SignUpWithGoogle) {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final Either<SignupFailures, SocialCredential> result =
            await _signupRepository.signupWithGoogle();

        result.fold(
            (l) => emit(
                  state.copyWith(
                    isLoading: false,
                    credential: optionOf(result),
                  ),
                ),
            (r) => emit(
                  state.copyWith(
                    isLoading: false,
                    credential: optionOf(result),
                    emailVO: EmailVO(r.email!),
                  ),
                ));
      } else if (event is SignUpWithFacebook) {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final Either<SignupFailures, SocialCredential> result =
            await _signupRepository.signupWithFacebook();
        result.fold(
          (l) => emit(
            state.copyWith(
              isLoading: false,
              credential: optionOf(result),
            ),
          ),
          (r) => emit(
            state.copyWith(
              isLoading: false,
              credential: optionOf(result),
              emailVO: EmailVO(r.email!),
            ),
          ),
        );
      } else if (event is CreateSocialUser) {
        if (state.credential!
            .fold(() => false, (a) => a.fold((l) => false, (r) => true))) {
          bool? isValid = state.emailVO!.isValid &&
              state.firstName!.isValid &&
              state.secondName!.isValid &&
              state.password!.isValid &&
              state.phoneNumber!.isValid;
          Either<SignupFailures, Unit>? result;
          if (isValid) {
            emit(
              state.copyWith(
                isLoading: true,
              ),
            );
            UserEnitity userEnitity = UserEnitity(
                uid: "",
                firstName: state.firstName,
                secondName: state.secondName,
                phoneNumber: state.phoneNumber,
                email: state.emailVO,
                password: state.password);
            result = await _signupRepository.createUserWithSocial(
              user: userEnitity,
              credential: state.credential!.fold(
                () => null,
                (a) => a.fold((l) => null, (r) => r),
              ),
            );
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              result: optionOf(result),
              isLoading: false,
            ),
          );
        }
      } else if (event is SignUpWithEmailAndPassword) {
        bool? isValid = state.emailVO!.isValid &&
            state.firstName!.isValid &&
            state.secondName!.isValid &&
            state.password!.isValid &&
            state.phoneNumber!.isValid;
        Either<SignupFailures, Unit>? result;
        if (isValid) {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          UserEnitity userEnitity = UserEnitity(
              uid: "",
              firstName: state.firstName,
              secondName: state.secondName,
              phoneNumber: state.phoneNumber,
              email: state.emailVO,
              password: state.password);
          result = await _signupRepository.createUserWithEmailAndPassword(
            user: userEnitity,
          );
        }
        emit(
          state.copyWith(
            showErrorMessages: true,
            result: optionOf(result),
            isLoading: false,
          ),
        );
      }
    });
  }
}
