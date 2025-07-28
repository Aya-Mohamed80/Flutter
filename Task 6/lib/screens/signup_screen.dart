import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signup/core/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../bloc/signup_bloc.dart';
import '../bloc/signup_event.dart';
import '../bloc/signup_state.dart';

class SignUpScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          backgroundColor: AppColors.mainColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: AppColors.black,
          ),
          shadowColor: AppColors.black,
          elevation: 10.0,
        ),
        body: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state.isValid && state.errorMessage == null) {
              Fluttertoast.showToast(msg: "Signed up successfully!");
            } else if (state.errorMessage != null) {
              Fluttertoast.showToast(msg: state.errorMessage!);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    onChanged: (value) {
                      context.read<SignUpBloc>().add(EmailChanged(value));
                    },
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    onChanged: (value) {
                      context.read<SignUpBloc>().add(PasswordChanged(value));
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      context.read<SignUpBloc>().add(SubmitSignUp());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.black,
                      ),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}