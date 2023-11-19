import 'package:flutter/material.dart';
import 'package:store_app/features/authentication/presentation/views/widgets/signup_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const SignUpBody(),
    );
  }
}
