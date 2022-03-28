import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../router.gr.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          MaterialButton(
            onPressed: () {
              // context.router.push(const SignInPageRoute());
            },
            child: const Center(
              child: Text("Login"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              context.router.push(const SignUpPageRoute());
            },
            child: const Center(
              child: Text("Signup"),
            ),
          )
        ],
      ),
    );
  }
}
