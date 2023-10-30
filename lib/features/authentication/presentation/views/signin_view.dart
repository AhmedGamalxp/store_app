import 'package:flutter/material.dart';
import 'package:store_app/features/authentication/presentation/views/widgets/signin_body.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: const SignInBody(),
    );
  }
}
