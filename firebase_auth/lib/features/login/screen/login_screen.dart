import 'package:iti_project/features/login/screen/login_screen_with_bloc.dart';
import 'package:iti_project/features/login/bloc/login_bloc.dart';
import 'package:iti_project/features/login/auth_repo_login.dart';
import 'package:iti_project/core/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(authLoginRepo: FirebaseAuthLoginService()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(child: LoginScreenContent()),
      ),
    );
  }
}
