import 'package:calaton_project/app/screens/login/login_screen.dart';
import 'package:calaton_project/app/screens/login/login_view_model.dart';
import 'package:calaton_project/data/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 class LoginScreenFactory {
  static Widget build() {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(
        userRepository: UserRepository()
      ),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) => LoginScreen(
          viewModel: model,
        ),
      ),
    );
  }
}




