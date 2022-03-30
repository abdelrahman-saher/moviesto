import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesto/injection.dart';
import 'package:moviesto/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:moviesto/presentation/sign_up/widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: BlocProvider(
            create: (context) => getIt<SignUpBloc>(),
            child: const SignUpForm(),
          ),
        ),
      ),
    );
  }
}
