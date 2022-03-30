import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesto/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:auto_route/auto_route.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(listener: (context, state) {
      state.result!.fold(() => null, (either) {
        either.fold((l) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l.message!),
            ),
          );
          context.read<SignUpBloc>().add(const SignUpEvent.clearResult());
        }, (r) {});
      });
      state.credential!.fold(() => null, (either) {
        either.fold((l) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l.message!),
            ),
          );
          context.read<SignUpBloc>().add(const SignUpEvent.clearCredentials());
        }, (r) {});
      });
    }, builder: (context, state) {
      return state.isLoading!
          ? const Center(child: CircularProgressIndicator())
          : Form(
              autovalidateMode: state.showErrorMessages!
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: state.firstName!.getNotNullValue(),
                    validator: (_) => state.firstName!.getFailureValue(),
                    onChanged: (value) => context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.changeFirstName(value)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.person),
                      labelText: "First Name",
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: state.secondName!.getNotNullValue(),
                    validator: (_) => state.secondName!.getFailureValue(),
                    onChanged: (value) => context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.changeSecondName(value)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Second Name",
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    enabled: state.credential!.isNone(),
                    validator: (_) => state.emailVO!.getFailureValue(),
                    initialValue: state.emailVO!.getNotNullValue(),
                    onChanged: (value) => context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.changeEmail(value)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: state.phoneNumber!.getNotNullValue(),
                    validator: (_) => state.phoneNumber!.getFailureValue(),
                    onChanged: (value) => context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.changePhone(value)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.phone),
                      labelText: "Phone",
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: state.password!.getNotNullValue(),
                    validator: (_) => state.password!.getFailureValue(),
                    obscureText: !state.showPassword!,
                    onChanged: (value) => context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.changePassword(value)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      labelText: "Password",
                      suffixIcon: GestureDetector(
                        onTap: () => context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.showPassword()),
                        child: Icon(
                          state.showPassword!
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {
                      if (state.credential!.isNone()) {
                        context.read<SignUpBloc>().add(
                            const SignUpEvent.signUpWithEmailAndPassword());
                      } else {
                        context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.createSocialUser());
                      }
                    },
                    child: const Text("Signup"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (state.credential!.isNone())
                    TextButton(
                      onPressed: () {
                        context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.signUpWithFacebook());
                      },
                      child: const Text("Facebook"),
                    ),
                  if (state.credential!.isNone())
                    TextButton(
                      onPressed: () {
                        context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.signUpWithGoogle());
                      },
                      child: const Text("Google"),
                    )
                ],
              ),
            );
    });
  }
}
